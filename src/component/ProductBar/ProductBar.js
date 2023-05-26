import ProductItem from "../ProductItem/ProductItem"
import { useNavigate } from "react-router-dom";
import './ProductBar.css'

const ProductBar = (props) => {
  console.log(props.products); 

  const navigate = useNavigate();

  function handleClick() {
    navigate("/another-page");
  }

  return (
    <div className="home-product-bar">
      <div className="home-product-bar-head">
        <div className="home-product-bar-title">{props.section}</div>
        <div className="home-product-bar-more" onClick={handleClick}>Explore all details</div>
      </div>

      <div className="home-product-bar-container">
        { props.products.map(product => (
          <ProductItem id={product.id} title={product.title} price={product.price} image={product.image} section={props.section}/>
        ))}
      </div>
    </div>
    )
}

export default ProductBar