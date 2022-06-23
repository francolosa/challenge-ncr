import React, { useState, useEffect, createContext, useContext } from 'react';

export const ClientContext = createContext([]);

export default function ClientContextProvider({children}){
    const [ accounts, setAccounts ] = useState([])
    //CLIENT ID MANUAL
    const [ clientId, setClientId ] = useState(1); 
    const [ accountDetail, setAccountDetail ] = useState();

    useEffect(()=>{
        accountsDb()
    }, [])

    const accountsDb = async () => {
        try {
            const response = await fetch(`http://localhost:3000/api/clients/accounts/${clientId}`)
            const fetchData = await response.json();
            setAccounts(fetchData)
        } catch (error) {
            console.log(error)
        }
    }
    
    const createTransfer = async (originAccountId, destinyAccountId, amount, clientId) => {
        const requestOptions = {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ originAccountId: originAccountId, destinyAccountId: destinyAccountId, amount: amount, clientId: clientId })
        }
        
        try {
            const response = await fetch("http://localhost:3000/api/clients/transfer/", requestOptions);
            let status = await response.json()
            console.log(status)
        } catch (error) {
            console.log(error)
        }
    }

    return <ClientContext.Provider value={{ accounts, accountDetail, clientId, createTransfer }}>
        {children}
    </ClientContext.Provider>
}