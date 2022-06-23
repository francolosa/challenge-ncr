import React, {useState, useContext, useEffect} from 'react';
import { ClientContext } from '../../context/clientContext';

export default function MakeTransferContainer() {
    const { accounts, createTransfer, clientId } = useContext(ClientContext);

    const [ originAccountId, setOriginAccountId] = useState();
    const [ destinyAccountId, setDestinyAccountId] = useState();
    const [ amount, setAmount] = useState();

    const handleOriginAccountChange = event => setOriginAccountId(event.target.value);
    const handleDestinyAccountChange = event => setDestinyAccountId(event.target.value)
    const handleAmountChange = event => setAmount(event.target.value)

    const onSubmit = async (evt) => {
        evt.preventDefault();
        await createTransfer(originAccountId, destinyAccountId, amount, clientId);
    }
    return <div class="mb-3" className="form">
        <h1>Realizar Transferencia</h1>
        <form onSubmit={onSubmit} > 
            <li><label for="originAccount" class="form-label">Seleccionar cuenta de origen</label>
            <select id="originAccount" name="originAccount" onChange={handleOriginAccountChange} class="form-control" required="required">
             <option value="" selected disabled hidden>seleccione</option>

                {   
                    accounts.map((account=>{
                         return <option value={account.accountId}>{account.accountId}</option>
                    }))
                }
            </select></li>
            <li><label for="destinyAccount" class="form-control">Seleccionar cuenta de destino</label>
            <select id="destinyAccount" name="destinyAccount" onChange={handleDestinyAccountChange} required="required">
                <option value="" selected disabled hidden>seleccione</option>
            {
                     accounts.map((account=>{
                         return <option value={account.accountId}>{account.accountId}</option>
                    }))
                }
            </select></li>

            <li><label for="amount">Ingrese cantidad</label>
            <input type="number" name="amount" id="amount"  onChange={handleAmountChange} required="required"/></li>
            <input type="submit" value="Confirmar" class="btn btn-success" className='button-6' /> 
       </form>

    </div>
}