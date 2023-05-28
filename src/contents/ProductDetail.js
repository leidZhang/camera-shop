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

  function handleAddToCart() {
    console.log("Click me!")
  }

  return (
    <div className='product-detail-container'>
      <img src={product.image} alt={productType} />  
      name {product.title}
      price ${product.price}
      <button className='add-to-cart-btn' onClick={handleAddToCart}>Add to Cart</button>
    </div>
  )
}

export default ProductDetail; 