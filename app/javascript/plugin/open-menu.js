const openNav = () => {
 const menu = document.getElementById("burgermenu");
 const nav = document.getElementById("myNav");

 menu.addEventListener('click', e =>{
  nav.classList.remove('hidden')
  nav.style.width = "100%";
 })
}

  // document.getElementById("myNav").style.width = "100%";

export { openNav }
