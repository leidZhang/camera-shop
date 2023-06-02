import './CartItem.css'; 
import React, { useState } from "react";

const CartItem = () => {
  const [isNotSelected, setIsNotSelected] = useState(true);
  const options = ["1","2","3","4","5","6","7","8","9","10+"]; 

  const handleQtyChange = (option) => {
    const val = option.target.value;
    console.log(val); 

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
        <img className="cart-item-img" src="https://m.media-amazon.com/images/I/71EWRyqzw0L._AC_SX425_.jpg" />
      </div>
      <div className="cart-item-info-container">
        <div className='cart-item-title'>EOS Rebel T7 DSLR</div>
        <div className='cart-unit-price'>$10</div>
        <div className='cart-item-qty'>
          {isNotSelected ? (
            <select
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