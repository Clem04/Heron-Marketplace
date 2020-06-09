const previewImageOnFileSelect = () => {
  const input = document.getElementById('photo-input');
  if (input) {
    input.addEventListener('change', () => {
      displayPreview(input);
    })
  }
}

const displayPreview = (input) => {
  if (input.files && input.files.length > 0) {
    const reader = new FileReader();
    reader.onload = (event) => {
      // document.getElementById('photo-preview').src = event.currentTarget.result;
      let img = document.createElement("IMG");
      img.src = event.currentTarget.result;
      img.width = '200';
      // const form = document.querySelector('.add-product');
      // img.classList.add('photo-preview');
      input.appendChild(img);
      console.log('yes');
    }
    reader.readAsDataURL(input.files[1])
    // document.querySelector('.photo-preview').classList.remove('hidden');
  }
}

export { previewImageOnFileSelect };
