import React from 'react';
import { Link } from 'react-router-dom';
import './NavBar.css'; 

const NavBar = () => {
  return (
    <nav className='navbar'>
      <div className='navbar-container'>
        <div className='titles'>
          eCommerce Shop
        </div>

        <div className='links'>
          <Link className='link' to="/">Home</Link>
          <Link className='link' to="/products">Products</Link>
          <Link className='link' to="/cart">Cart</Link>
        </div>
      </div>
    </nav>
  )
}

export default NavBar; 