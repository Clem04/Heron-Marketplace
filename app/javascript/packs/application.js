import "bootstrap";
import { menu_toggle } from "../plugin/form-nav";
import { openNav } from "../plugin/open-menu";
import { closeNav } from "../plugin/close-menu";

openNav();
closeNav();

if(window.location.pathname === '/users/sign_up'){
  menu_toggle();
};
