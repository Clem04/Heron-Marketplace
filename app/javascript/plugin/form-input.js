const form = document.querySelector('.category-form-group');
const inputSizes = document.querySelector('.size-input');


function handleSizes(label) {
  if (label.innerText === 'Fashion') {
    inputSizes.classList.remove('hidden');
  } else if (label.innerText != 'Fashion')
    inputSizes.classList.add('hidden');
};

function handleClick(e) {
  const sub = document.querySelector('.sub-categories-form');
  const subCatSelect = sub.querySelector('select');
  const subCatOptions = sub.querySelectorAll('option');
  let subCatOp = sub.querySelectorAll('option');

  const label = this.querySelector('label');
  sub.classList.remove('hidden');
  handleSizes(label);
  const subCat = subCatOptions.forEach((option) => {
    option.classList.add('hidden');
    if (label.innerText === 'Fashion' && option.value <= 8) {
      option.classList.remove('hidden');
    }
    if (label.innerText === 'Beauty & Wellness' && option.value > 8 && option.value <= 16) {
      option.classList.remove('hidden');
    }
    if (label.innerText === 'Food' && option.value > 16 && option.value <= 25) {
      option.classList.remove('hidden');
    };

    if (label.innerText === 'Home Decor' && option.value > 25 && option.value <= 37) {
      option.classList.remove('hidden');
    };
  });
}



const formInput = () => {
  if (form) {
    const categories = form.querySelectorAll('.form-check');
    categories.forEach((category) => {
      category.addEventListener('click', handleClick);
    })
  }
}

export { formInput };
