const previewImageOnFileSelect = () => {
  const input = document.querySelectorAll('.photo-input');
  if (input) {
    input.forEach((i) => {
      i.addEventListener('change', () => {
        displayPreview(i);
      })
    })
  }
}

const displayPreview = (input) => {
  if (input.files && input.files[0]) {
    const reader = new FileReader();
    let preview = '';
    if (input.id === 'product_photo_1') {
      preview = '.photo-preview-1'
      const photo1 = document.querySelector('.photo-1');
      photo1.style.position = 'relative';
      photo1.style.top = '108px';
      photo1.style.right = '150px';
    }
    if (input.id === 'product_photo_2') {
      preview = '.photo-preview-2'
      const photo2 = document.querySelector('.photo-2');
      photo2.style.position = 'relative';
      photo2.style.top = '108px';
      photo2.style.right = '140px';
    }
    reader.onload = (event) => {
      document.querySelector(preview).src = event.currentTarget.result;
    }
    reader.readAsDataURL(input.files[0]);
    document.querySelector(preview).classList.remove('hidden');
  }
}

export { previewImageOnFileSelect };
