import React from "react";
import CartItem from "../component/CartItem/CartItem"; 

const Cart = () => {
  return (
    <div className="cart-content">
      <div className="cart-title">Shopping Cart</div>

      <div className="cartlist-containter">
        <CartItem />
        <CartItem />
      </div>

      <div className="cart-total">
        Total: $0.00
      </div>
    </div>
  )
}

export default Cart; 