import React, {useEffect, useContext, useState} from 'react';
import { Link, useParams } from 'react-router-dom';

export default function AccountDetailContainer(){
    const { accountId, clientId } = useParams();
    const [ clientDetail, setClientDetail ] = useState([])
    const [ accountDetail, setAccountDetail ] = useState([]);

    useEffect(()=>{
        getAccountDetail()
    }, [])

    const getAccountDetail = async () => {
        //GET CUENTA (PARAMETROS: NUMERO DE CLIENTE Y NUMERO DE CUENTA)
        try {
            const response = await fetch(`http://localhost:3000/api/clients/account/${clientId}&${accountId}`)
            const fetchData = await response.json();
            setClientDetail(fetchData.client)
            setAccountDetail(fetchData.account)
        } catch (error) {
            console.log(error)
        }
    }
    console.log(clientDetail)
    console.log(accountDetail)
    return <div className="accountDetailContainer">
        <ul> Datos de la cuenta:
            <li>nombre del titular: {clientDetail.name} {clientDetail.lastName}</li>
            <li>creada el: {clientDetail.createdAt}</li>
            <li>tipo de cuenta: {accountDetail.accountType}</li>
            <li>numero de cuenta: {accountDetail.accountId}</li>
            <li>saldo: {accountDetail.cash}</li>
        </ul>
        <Link to="/"><button className="button-6">Volver</button></Link>
    </div>
}