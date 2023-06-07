import './style.css'; 
import PaymentRow from '../component/CheckoutForm/PaymentRow'; 
import ReviewRow from '../component/CheckoutForm/ReviewRow';
import ShippingRow from '../component/CheckoutForm/ShippingRow';

const Checkout = () => {
  return (
    <div className="checkout-form-container">
      <div className='checkout-form-title'>Checkout</div>
      <ShippingRow />
      <PaymentRow />
      <ReviewRow />
    </div>
  )  
}

export default Checkout; 