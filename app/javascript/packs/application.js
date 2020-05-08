import "bootstrap";
import { menu_toggle } from "../plugin/form-nav";
<<<<<<< HEAD
import { menu_toggle } from "../plugin/confirmation-merchant";
=======
import { openNav } from "../plugin/open-menu";
import { closeNav } from "../plugin/close-menu";

openNav();
closeNav();
>>>>>>> db94d3c568d2b8b78004bd12edcce28b142fdf29

if(window.location.pathname === '/users/sign_up'){
  menu_toggle();
};
<<<<<<< HEAD

if(window.location.pathname === '/posts/new'){
  confirmation_message();
=======
if(window.location.pathname === '/users/sign_in'){
  menu_toggle();
>>>>>>> db94d3c568d2b8b78004bd12edcce28b142fdf29
};
