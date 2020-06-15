const addToCartIconUpdate = () => {
  const navCartIcon = document.getElementById('shopping-bag');
  const navBagImg = navCartIcon.querySelector('.bag-img');
  const navItemCount = navCartIcon.querySelector('.num-item-in-cart');
  const addToCartButton = document.querySelector('.add-cart-btn');

  if (addToCartButton) {
    addToCartButton.addEventListener('click', (event) => {
      navItemCount.innerHTML = parseInt(navItemCount.innerHTML) + 1;
      navItemCount.classList.remove('no-display');
      navBagImg.src = '/assets/shopping-bag-icon-black-b2246b7f388cfc73817fb4b0ade45778895e7c08e0da450718366e991103c3de.svg';
    })
  }
};

export { addToCartIconUpdate };
