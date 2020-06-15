const addToCartPopUp = () => {
  const cartIcons = document.querySelectorAll('.add-to-cart')
  cartIcons.forEach((icon) => {
    icon.addEventListener( 'click', (event) => {
      const successPopup = document.getElementById('add-product-to-cart');

      successPopup.classList.add('display-add-to-cart-success');
      setTimeout(function(){
        successPopup.classList.remove('display-add-to-cart-success');
      }, 2500);
    });
  });
};

export { addToCartPopUp };
