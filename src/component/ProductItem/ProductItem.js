import { useNavigate } from "react-router-dom";
import './ProductItem.css'; 

const ProductItem = (props) => {
  const navigate = useNavigate();

  function handleClick() {
    navigate(`/${props.section}/${props.id}`);
  }

  return (
    <div className="home-item-content" onClick={ handleClick }>
      <div className="home-item-image-container">
        <img className="home-item-img" src={props.image} alt="image" />
      </div>
      <div className="home-item-title">{props.title}</div>
      <div className="home-item-price">${props.price}</div>
    </div>    
  )
}

export default ProductItem