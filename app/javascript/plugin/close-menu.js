const closeNav = () => {
 const close = document.querySelector(".closebtn");
 const nav = document.getElementById("myNav");

 close.addEventListener('click', e =>{
  nav.style.width = "0%";
 })
}
export { closeNav }
