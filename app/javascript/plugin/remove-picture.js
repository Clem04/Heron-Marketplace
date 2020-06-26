
const divs = document.querySelectorAll('.picture-creation')
const previewImageOnFileSelect = () => {
  divs.forEach((div, index) => {
    const input = div.querySelector('.photo-input');
    if (input) {
      input.addEventListener('change', () => {
        const label = div.querySelector('label');
        const button = div.querySelector('.delete');
        const img = div.querySelector('.photo-preview');
        const nextDiv = divs[index + 1];
        console.log(nextDiv);
        if (nextDiv) {
          let nextLabel = nextDiv.querySelector('label');
          displayPreview(input, label, button, img, nextLabel);
        } else {
          let nextLabel = '';
          displayPreview(input, label, button, img, nextLabel);
        }
        removePicture(button, img, label);
      })
    }
  })
}


const displayPreview = (input, label, button, img, nextLabel) => {
  if (input.files && input.files[0]) {
    const reader = new FileReader();
    label.style.position = 'relative';
    label.style.bottom = '14rem';
    label.style.left = '6rem';
    if (nextLabel) {
      nextLabel.classList.remove('hidden');
    }
    button.style.position = 'relative';
    button.classList.remove('hidden');
    reader.onload = (event) => {
      img.src = event.currentTarget.result;
    }
    reader.readAsDataURL(input.files[0])
    img.classList.remove('hidden');
  }
}

const removePicture = (button, img, label) => {
  if (button) {
    button.addEventListener('click', (e) => {
      img.src = 'unknown';
      img.classList.add('hidden');
      label.style.position = 'static';
    })
  }
}

export { previewImageOnFileSelect };
