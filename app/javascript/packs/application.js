import "bootstrap";
import { menu_toggle } from "../plugin/form-nav";
import { menu_toggle } from "../plugin/confirmation-merchant";

if(window.location.pathname === '/users/sign_up'){
  menu_toggle();
};

if(window.location.pathname === '/posts/new'){
  confirmation_message();
};
