import React, { useState, useContext } from 'react';

export default function Transfer({transfer}) {

    return <div className="button-6" style={{display: 'flex', justifyContent: 'center'}}>
       
        <ul>
            <li> id de transacción: {transfer.transferId}</li>
            <li> fecha: {transfer.createdAt}</li>
            <li> cuenta de origen: {transfer.originAccountId}</li>
            <li> cuenta de destino: {transfer.destinyAccountId}</li>
            <li> cantidad: {transfer.amount}</li>
        </ul>
    </div>
}