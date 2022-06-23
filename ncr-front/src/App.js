import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';

import NavBar from './components/NavBar';
import IndexContainer from './components/IndexContainer';
import AccountDetailContainer from './components/account/AccountDetailContainer';
import TransfersContainer from './components/transfer/TransfersContainer';
import MakeTransferContainer from './components/transfer/MakeTransferContainer';

import ClientContextProvider from './context/clientContext';

function App() {
  return (
    <BrowserRouter>
      <ClientContextProvider>
        <NavBar />
        <Routes>
          <Route path="/" element={<IndexContainer />} />
          <Route path="/detail/:clientId&:accountId" element={<AccountDetailContainer />} />
          <Route path="/makeTransfer/" element={<MakeTransferContainer />} />
          <Route path="/transfers/" element={<TransfersContainer />} />
        </Routes>
      </ClientContextProvider>
    </BrowserRouter>
  );
}

export default App;
