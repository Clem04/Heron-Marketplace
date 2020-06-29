const input = document.querySelector('.size-input');
const selectField = input.querySelector('select');
const sizesBlock = document.querySelector('.diffrent-sizes');

function displayBlockDifSizes(e) {
  if (e && e.currentTarget.value === 'Diffrent Sizes') {
    sizesBlock.classList.remove('hidden');
  } else {
    sizesBlock.classList.add('hidden');
  }
}
if (selectField) {
  selectField.addEventListener('change', displayBlockDifSizes)
}



export { displayBlockDifSizes };
