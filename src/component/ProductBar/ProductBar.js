import ProductItem from "../ProductItem/ProductItem"
import { useNavigate } from "react-router-dom";
import './ProductBar.css'

const ProductBar = (props) => {
    const navigate = useNavigate();

    function handleClick() {
        navigate("/another-page");
    }

    return (
        <div className="home-product-bar">
          <div className="home-product-bar-head">
            <div className="home-product-bar-title">{props.section}</div>
            <div className="home-product-bar-more" onClick={handleClick}>Explore all details</div>
          </div>
          <div className="home-product-bar-container">
            <ProductItem title="test item" price="???" image="https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225" />
            <ProductItem title="test item" price="???" image="https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225" />
            <ProductItem title="test item" price="???" image="https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225" />
            <ProductItem title="test item" price="???" image="https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225" />
            <ProductItem title="test item" price="???" image="https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225" />
            <ProductItem title="test item" price="???" image="https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225" />
            <ProductItem title="test item" price="???" image="https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225" />
            <ProductItem title="test item" price="???" image="https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225" />
            <ProductItem title="test item" price="???" image="https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225" />
            <ProductItem title="test item" price="???" image="https://img0.baidu.com/it/u=1442536931,57766296&fm=253&fmt=auto&app=138&f=JPG?w=225&h=225" />
          </div>
        </div>
    )
}

export default ProductBar