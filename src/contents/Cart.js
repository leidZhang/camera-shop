import axios from "axios";
import { htmlToJson } from "../utils/htmltojson";
import CartItem from "../component/CartItem/CartItem"; 
import React, { useState, useEffect } from "react";

const Cart = () => {
  const [cartList, setCartList] = useState([]); 
  const [totalPrice, setTotalPrice] = useState(0.00); 

  useEffect(() => {
    axios.get('http://localhost:8000/cart/1').then(res => { // temporarily using user 1
      const html = res.data; 
      let json = htmlToJson(html); 

      let array = JSON.parse(json); 
      var list = array.map(function(item) {
        return {
          id: item.id, 
          title: item.model_name, 
          price: item.retail_price,
          number: item.prod_num,
          image: item.image
        }
      });
      setCartList(list);

      let price = 0;
      list.forEach(item => {
        price += item.price * item.number;
      });
      setTotalPrice(price.toFixed(2)); 
    }).catch(err => {
      console.log(err); 
    })
  }, []); 

  return (
    <div className="cart-content">
      <div className="cart-title">Shopping Cart</div>

      <div className="cartlist-containter">
        {cartList.map(cartItem => (
          <CartItem 
            id={cartItem.id} 
            title={cartItem.title} 
            price={cartItem.price} 
            image={cartItem.image}
            number={cartItem.number}
          />
        ))}
      </div>

      <div className="cart-total">
        Total: ${totalPrice}
      </div>
    </div>
  )
}

export default Cart; 