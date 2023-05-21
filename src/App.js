import './App.css';
import { BrowserRouter as Router } from 'react-router-dom';
import NavBar from './component/NavBar/NavBar'; 
import FootBar from './component/FootBar/FootBar';

function App() {
  return (
    <Router>
      <NavBar />
      <div className="content-container">

      </div>
      <FootBar />
    </Router>
  );
}

export default App;
