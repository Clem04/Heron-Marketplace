const form = document.querySelector('.category-form-group');

function handleClick(e) {
  const label = this.querySelector('label');
  const sub = document.querySelectorAll('.sub-categories-form');
  if (sub) {
    sub.forEach(subCat => subCat.innerHTML = '');
  }
  if (label.innerText === 'Fashion') {
    const subCatFash = sub.querySelector('.fashion-sub')
    subCatFash.classList.remove('hidden')
  }
  if (label.innerText === 'Beauty & Wellness') {
    const subCatFash = sub.querySelector('.beauty-sub')
    subCatFash.classList.remove('hidden')
  }

  if (label.innerText === 'Food') {
    const subCatFash = sub.querySelector('.food-sub')
    subCatFash.classList.remove('hidden')
  };

  if (label.innerText === 'Home Decor') {
    const subCatFash = sub.querySelector('.home-sub')
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
