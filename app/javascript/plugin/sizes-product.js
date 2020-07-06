const input = document.querySelector('.size-input');

function displayBlockDifSizes(e) {
  const sizesBlock = document.querySelector('.diffrent-sizes');
  if (e && e.currentTarget.value === 'Diffrent Sizes') {
    sizesBlock.classList.remove('hidden');
  } else {
    sizesBlock.classList.add('hidden');
  }
}

if (input) {
  const selectField = input.querySelector('select');
  selectField.addEventListener('change', displayBlockDifSizes)
}



export { displayBlockDifSizes };
