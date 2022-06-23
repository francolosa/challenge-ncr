import React, {useContext} from 'react';
import { Link } from 'react-router-dom';
import { ClientContext } from '../../context/clientContext';

export default function Account({account}){
    const { clientId } = useContext(ClientContext);

    return <div >
        <Link to={`/detail/${clientId}&${account.accountId}`} className="button-6">
        <ul>    <li>tipo de cuenta: {account.accountType}</li>
            <li>numero de cuenta: {account.accountId}</li>
            

        </ul></Link>
    </div>
}