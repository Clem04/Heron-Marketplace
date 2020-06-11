const previewImageOnFileSelect = () => {
  const input = document.querySelector('.photo-input-1');
  if (input) {
    input.addEventListener('change', () => {
      displayPreview(input);
    })
  }
}

const displayPreview = (input) => {
  if (input.files && input.files[0]) {
    const reader = new FileReader();
    reader.onload = (event) => {
      document.querySelector('.photo-preview-1').src = event.currentTarget.result;
    }
    reader.readAsDataURL(input.files[0])
    document.querySelector('.photo-preview-1').classList.remove('hidden');
  }
}

export { previewImageOnFileSelect };
