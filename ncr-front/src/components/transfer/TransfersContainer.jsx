import React, { useState, useContext, useEffect } from 'react';
import Transfer from './Transfer'
import { ClientContext } from '../../context/clientContext';
import { Link } from 'react-router-dom';

export default function TransfersContainer() {
    const [transfers, setTransfers] = useState([]);
    const { clientId } = useContext(ClientContext);

    useEffect(() => {
        getTransfers()
    }, [])

    const getTransfers = async () => {
        //  GET TRANSFERS (PARAMETRO: NUMERO DE CLIENTE)
        try {
            const response = await fetch(`http://localhost:3000/api/clients/transfers/${clientId}`)
            const fetchData = await response.json();
            setTransfers(fetchData)
        } catch (error) {
            console.log(error)
        }
    }
    console.log(transfers)

    return <>
        <h1>Ver Transferencias</h1>
        <div className="transferContainer" >

            {
                transfers.map((transfer) => {
                    return <Transfer transfer={transfer} />
                })
            }

            <Link to="/"><button>Volver</button></Link>
        </div>
    </>

}