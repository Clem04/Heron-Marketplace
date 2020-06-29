const form = document.querySelector('.category-form-group');
const inputSizes = document.querySelector('.size-input');
const sub = document.querySelector('.sub-categories-form');
const subCatOptions = sub.querySelectorAll('option');
console.log(subCatOptions);

function handleClick(e) {
  const label = this.querySelector('label');
  if (sub) {
    sub.classList.add('hidden');
  }
  if (label.innerText === 'Fashion') {
    const subCatFash = form.querySelector('.fashion-sub')
    subCatFash.classList.remove('hidden')
    inputSizes.classList.remove('hidden')
  } else {
    inputSizes.classList.add('hidden')
  }
  if (label.innerText === 'Beauty & Wellness') {
    const subCatFash = form.querySelector('.beauty-sub')
    subCatFash.classList.remove('hidden')
  }

  if (label.innerText === 'Food') {
    const subCatFash = form.querySelector('.food-sub')
    subCatFash.classList.remove('hidden')
  };

  if (label.innerText === 'Home Decor') {
    const subCatFash = form.querySelector('.home-sub')
    subCatFash.classList.remove('hidden')
  };
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
