const openUserNav = () => {
 const icon = document.getElementById("connect-user");
 const userNav = document.querySelector("#user-menu a");

  icon.addEventListener('click', e =>{
    userNav.classList.toggle("hidden");
  });
}

export { openUserNav }
