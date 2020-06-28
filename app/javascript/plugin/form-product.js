const input = document.querySelector('.size-input');
const selectField = input.querySelector('select');
const options = selectField.querySelectorAll('option');

function displayBlockDifSizes(e) {
  console.log(e);
}
// if (selectField) {
// }
options.forEach((op) => {
  // console.log(op);
  op.addEventListener('change', displayBlockDifSizes);
})


export { displayBlockDifSizes };
