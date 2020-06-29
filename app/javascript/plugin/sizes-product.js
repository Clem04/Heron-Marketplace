const input = document.querySelector('.size-input');
const selectField = input.querySelector('select');
const sizesBlock = document.querySelector('.diffrent-sizes');

function displayBlockDifSizes(e) {
  console.log(e.currentTarget.value);
  if (e.currentTarget.value === 'Diffrent Sizes' ) {
    sizesBlock.classList.remove('hidden');
  } else {
    sizesBlock.classList.add('hidden');
  }
}
if (selectField) {
  selectField.addEventListener('change', displayBlockDifSizes)
}



export { displayBlockDifSizes };
