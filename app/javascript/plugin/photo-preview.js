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
    if (input.id === 'product_photo_1') { preview = '.photo-preview-1' }
    if (input.id === 'product_photo_2') {  preview = '.photo-preview-2' }
    reader.onload = (event) => {
      document.querySelector(preview).src = event.currentTarget.result;
    }
    reader.readAsDataURL(input.files[0])
    document.querySelector(preview).classList.remove('hidden');
  }
}

export { previewImageOnFileSelect };
