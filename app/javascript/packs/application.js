import "bootstrap";
import { menu_toggle } from "../plugin/form-nav";
import { confirmation_message } from "../plugin/confirmation-merchant";
import { openNav } from "../plugin/open-menu";
import { closeNav } from "../plugin/close-menu";
import { openUserNav } from "../plugin/user-menu";
import { formInput } from "../plugin/form-input";
import { previewImageOnFileSelect } from "../plugin/picture-preview";
import { addToCartPopUp } from "../plugin/add-to-cart-pop-up";
import { addToCartIconUpdate } from "../plugin/add-to-cart-icon-update";
import { displayBlockDifSizes } from "../plugin/sizes-product";


openNav();
closeNav();
openUserNav();
addToCartPopUp();
addToCartIconUpdate();
formInput();
previewImageOnFileSelect();
displayBlockDifSizes();

if(window.location.pathname === '/users/sign_up'){
  menu_toggle();
};

if(window.location.pathname === '/posts/new'){
  confirmation_message()
};

if(window.location.pathname === '/users/sign_in'){
  menu_toggle();
};
