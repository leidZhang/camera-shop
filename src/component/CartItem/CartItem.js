import './CartItem.css'; 
import React, { useState } from "react";

const CartItem = (props) => {
  const [isNotSelected, setIsNotSelected] = useState(true);
  const [number, setNumber] = useState(props.number); 
  const options = ["1","2","3","4","5","6","7","8","9","10+"]; 

  const handleQtyChange = (option) => {
    const val = option.target.value;
    setNumber(val); 

    if (val === "10+") {
      setIsNotSelected(false); 
    }
  }

  const handleDelete = () => {
    alert("under development");
    // impl delete
  }

  return (
    <div className="cart-item-container">
      <div className="cart-item-image-container">
        <img className="cart-item-img" src={props.image} alt="image" />
      </div>

      <div className="cart-item-info-container">
        <div className='cart-item-title'>{props.title}</div>
        <div className='cart-unit-price'>${props.price}</div>
        <div className='cart-item-qty'>
          {isNotSelected ? (
            <select
              value={options[number-1]}
              onChange={handleQtyChange}
              className='cart-item-qty-selector'
            >
              {options.map((option) => (
                <option key={option} value={option}>
                  {option}
                </option>
              ))}
            </select> 
          ) : (
            <input type="text" className='cart-item-qty-input' />
          )} 
        </div>
        <div className='cart-item-delete' onClick={handleDelete}>Delete</div>
      </div>
    </div>
  )
}

export default CartItem; 