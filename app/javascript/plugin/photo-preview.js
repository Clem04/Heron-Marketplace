const previewImageOnFileSelect = () => {
  const input = document.querySelectorAll('.photo-input');
  console.log(input);
  if (input) {
    input.forEach((i) => {
      i.addEventListener('change', () => {
        displayPreview(i);
      })
    })
  }
}

const displayPreview = (input) => {
  if (input.files && input.files.length > 0) {
    const reader = new FileReader();
    reader.onload = (event) => {
      document.querySelectorAll('.photo-preview').forEach((photo) => {
        photo.src = event.currentTarget.result;
      });
    }
    reader.readAsDataURL(input.files[0])
    document.querySelector('.photo-preview').classList.remove('hidden');
  }
}

export { previewImageOnFileSelect };
