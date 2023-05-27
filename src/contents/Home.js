import './style.css'; 
import axios from "axios";
import React, { useState, useEffect } from "react";
import { htmlToJson } from "../utils/htmltojson"; 
import ProductBar from "../component/ProductBar/ProductBar";

const Home = () => {
  const products2 = [
    {id: 1, title: "test2", price: 123, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 2, title: "test2", price: 456, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 3, title: "test2", price: 789, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 4, title: "test2", price: 456, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 5, title: "test2", price: 789, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 6, title: "test2", price: 123, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 7, title: "test2", price: 789, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 8, title: "test2", price: 456, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 9, title: "test2", price: 789, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 10, title: "test2", price: 456, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
  ]; 

  const products3 = [
    {id: 1, title: "test3", price: 123, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 2, title: "test3", price: 456, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 3, title: "test3", price: 789, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 4, title: "test3", price: 456, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 5, title: "test3", price: 789, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 6, title: "test3", price: 123, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 7, title: "test3", price: 789, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 8, title: "test3", price: 456, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 9, title: "test3", price: 789, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
    {id: 10, title: "test3", price: 456, image: "https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225"},
  ]; 

  const [products, setProducts] = useState([]) 

  useEffect(() => {
    axios.get('http://localhost:8000/camera/').then(res => {
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
      console.log(list); 

      setProducts(list); 
    }).catch(err => {
      console.log(err); 
    }); 
  }, []); 
  

  return (
    <div className="home-content">
      <ProductBar section="Cameras" products={products} />
      <ProductBar section="Lens" products={products2}/>
      <ProductBar section="Attachments" products={products3}/>
    </div>
  )
}

export default Home; 