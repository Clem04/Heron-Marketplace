const input = document.querySelector('.size-input');

if (input) {
  input.addEventListener('click', displayBlockDifSizes);
}
const displayBlockDifSizes = () => {
    console.log(input);
}

export { displayBlockDifSizes };
