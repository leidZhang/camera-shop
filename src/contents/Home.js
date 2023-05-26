import ProductBar from "../component/ProductBar/ProductBar";
import './style.css'

const Home = () => {
  return (
    <div className="home-content">
      <ProductBar section="Cameras"/>
      <ProductBar section="Lens"/>
    </div>
  )
}

export default Home; 