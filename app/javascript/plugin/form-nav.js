
const menu_toggle = () => {

  const signup_tab = document.querySelector('li#signup-tab');
  const login_tab = document.querySelector('li#login-tab');
  const signup_connect_form = document.querySelector('#signup.user-forms');
  const login_connect_form = document.querySelector('#login.user-forms');


    signup_tab.addEventListener('click', event => {
      event.currentTarget.classList.add('active');
      login_tab.classList.remove('active');
      login_connect_form.classList.add('hidden');
      signup_connect_form.classList.remove('hidden');
    });

    login_tab.addEventListener('click', event => {
      event.currentTarget.classList.add('active');
      signup_tab.classList.remove('active');
      signup_connect_form.classList.add('hidden');
      login_connect_form.classList.remove('hidden');
    });

}



export { menu_toggle };
