import "bootstrap";
import { menu_toggle } from "../plugin/form-nav";
import { confirmation_message } from "../plugin/confirmation-merchant";
import { openNav } from "../plugin/open-menu";
import { closeNav } from "../plugin/close-menu";

openNav();
closeNav();

if(window.location.pathname === '/users/sign_up'){
  menu_toggle();
};

if(window.location.pathname === '/posts/new'){
  confirmation_message()
};

if(window.location.pathname === '/users/sign_in'){
  menu_toggle();
};
