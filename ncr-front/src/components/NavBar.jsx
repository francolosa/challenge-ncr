import React from 'react';
import MakeTransferContainer from './transfer/MakeTransferContainer';
import { Link } from 'react-router-dom';

export default function NavBar(){
    return <div>
        <nav>
            <ul className="ulNav">
                <Link to="/" style={{ textDecoration: 'none', color: 'inherit' }} class="nav-link active" aria-current="page"><li>Home</li></Link>
                <Link to="/" style={{ textDecoration: 'none', color: 'inherit' }} class="nav-link active" aria-current="page"><li>Consulta de saldo</li></Link>
                <Link to="/transfers" style={{ textDecoration: 'none', color: 'inherit' }} class="nav-link active" aria-current="page"><li>Ver  transferencias</li></Link>
                <Link to="/makeTransfer" style={{ textDecoration: 'none', color: 'inherit' }} class="nav-link active" aria-current="page"><li>Realizar Transferencia</li></Link>
            </ul>
        </nav>
    </div>
}