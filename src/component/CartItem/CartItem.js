import './CartItem.css'; 
import React, { useState } from "react";

const CartItem = () => {
  const [isNotSelected, setIsNotSelected] = useState(true);

  const handleQtyChange = (option) => {
    const qty = option.target.value;
    console.log(qty); 
    if (qty === "10+") {
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
        <div className='cart-unit-price'>$0</div>
        <div className='cart-item-qty'>
          {isNotSelected ? (
            <select
              onChange={handleQtyChange}
              className='cart-item-qty-selector'
            >
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10+">10+</option>
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