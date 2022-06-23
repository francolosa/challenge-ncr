import React, { useContext, useState } from 'react';
import Account from './Account'
import { ClientContext } from '../../context/clientContext';

export default function AccountContainer() {
    const { accounts } = useContext(ClientContext)
    const [seeMore, setSeeMore] = useState(false);

    const onSeeMore = (evt) => {
        evt.preventDefault();
        setSeeMore(true);
    }
    const onSeeLess = (evt) => {
        evt.preventDefault();
        setSeeMore(false);
    }

    return <>
        <h4>Consulta de saldo</h4>
        <h1>Seleccione la cuenta a consultar</h1>
        <div className="accountContainer">
            {
                seeMore ? accounts.map((account) => {
                    return <Account account={account} />
                }) :
                    accounts.slice(0, 5).map((account) => {
                        return <Account account={account} />
                    })

            }
            {!seeMore ? <button onClick={onSeeMore} className="button-6">Mas Opciónes</button>
                : <button onClick={onSeeLess} className="button-6">Ver menos</button>
            }
        </div>
    </>
}