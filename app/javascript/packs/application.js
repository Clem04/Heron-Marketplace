import "bootstrap";
import { menu_toggle } from "../plugin/form-nav";
import { confirmation_message } from "../plugin/confirmation-merchant";
import { openNav } from "../plugin/open-menu";
import { closeNav } from "../plugin/close-menu";
import { openUserNav } from "../plugin/user-menu";
import { addToCart } from "../plugin/add-to-cart";
import { formInput } from "../plugin/form-input";
import { previewImageOnFileSelect } from "../plugin/photo-preview";
import { addToCartPopUp } from "../plugin/add-to-cart-pop-up";
import { addToCartIconUpdate } from "../plugin/add-to-cart-icon-update";


openNav();
closeNav();
openUserNav();
addToCart();
formInput();
previewImageOnFileSelect();
addToCartPopUp();
addToCartIconUpdate();


if(window.location.pathname === '/users/sign_up'){
  menu_toggle();
};

if(window.location.pathname === '/posts/new'){
  confirmation_message()
};

if(window.location.pathname === '/users/sign_in'){
  menu_toggle();
};
