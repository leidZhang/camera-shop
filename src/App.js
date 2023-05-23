import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import NavBar from './component/NavBar/NavBar'; 
import FootBar from './component/FootBar/FootBar';
import Home from './contents/Home'; 
import NotFound from './contents/NotFound'; 

function App() {
  return (
    <Router>
      <div className="App">
        <NavBar />
          <div className="content-container">
            <Routes>
              <Route exact path="/" element={<Home />} />
              <Route path="*" element={<NotFound />} />                
            </Routes>
          </div>
        <FootBar />
      </div>
    </Router>
  );
}

export default App;
