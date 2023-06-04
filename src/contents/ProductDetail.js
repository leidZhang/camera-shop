import './style.css'; 
import axios from "axios";
import { useParams } from "react-router-dom";
import React, { useState, useEffect } from "react";
import { htmlToJson } from "../utils/htmltojson";

const ProductDetail = () => {
  const { productType, id } = useParams();
  const [product, setProduct] = useState([]); 
  
  useEffect(() => {
    axios.get(`http://localhost:8000/${productType}/${id}`).then(res => {
      const html = res.data; 
      let json = htmlToJson(html); 
     
      let array = JSON.parse(json); 
      var list = array.map(function(item) {
        return {
          id: item.id, 
          title: item.model_name, 
          price: item.retail_price, 
          image: item.img
        }
      }); 

      setProduct(list[0]); 
    }).catch(err => {
      console.log(err); 
    });
  }, []); 

  const handleAddToCart = async (u_id, p_id, p_num) => {
    try {
      const res = await axios.post('http://localhost:8000/cart/post', {
        user_id: u_id, 
        prod_id: p_id, 
        qty: p_num
      }); 

      console.log(res.data); 
    } catch(err) {
      console.error(err); 
    }
  }

  return (
    <div className='product-detail-container'>
      <img src={product.image} alt={productType} />  
      name {product.title}
      price ${product.price}
      <button className='add-to-cart-btn' onClick={() => handleAddToCart(1, id, 1)}>Add to Cart</button>
    </div>
  )
}

export default ProductDetail; 