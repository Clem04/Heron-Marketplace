// const previewImageOnFileSelect = () => {
//   const input = document.querySelectorAll('.photo-input');
//   if (input) {
//     input.forEach((i) => {
//       i.addEventListener('change', () => {
//         displayPreview(i);
//       })
//     })
//   }
// }

// const photo1 = document.querySelector('.photo-1');
// const photo2 = document.querySelector('.photo-2');
// const photo3 = document.querySelector('.photo-3');
// const photo4 = document.querySelector('.photo-4');

// const div = document.querySelector('.picture-creation')
// const button = document.querySelector('.delete');

// const displayPreview = (input) => {
//   if (input.files && input.files[0]) {
//     const reader = new FileReader();
//     let preview = '';
//     if (input.id === 'product_photo_1') {
//       preview = '.photo-preview-1'
//       photo1.style.position = 'relative';
//       photo1.style.bottom = '12rem';
//       photo1.style.left = '4rem';
//       photo2.classList.remove('hidden');
//       button.classList.remove('hidden');
//       button.style.position = 'relative';
//     }
//     if (input.id === 'product_photo_2') {
//       preview = '.photo-preview-2'
//       photo2.style.position = 'relative';
//       photo2.style.bottom = '12rem';
//       photo2.style.left = '4rem';
//       photo3.classList.remove('hidden');
//       button.classList.remove('hidden');
//     }
//     if (input.id === 'product_photo_3') {
//       preview = '.photo-preview-3'
//       photo3.style.position = 'relative';
//       photo3.style.bottom = '12rem';
//       photo3.style.left = '4rem';
//       photo4.classList.remove('hidden');
//       button.classList.remove('hidden');
//     }
//     if (input.id === 'product_photo_4') {
//       preview = '.photo-preview-4'
//       photo4.style.position = 'relative';
//       photo4.style.bottom = '12rem';
//       photo4.style.left = '4rem';
//       button.classList.remove('hidden');
//     }
//     reader.onload = (event) => {
//       document.querySelector(preview).src = event.currentTarget.result;
//     }
//     reader.readAsDataURL(input.files[0]);
//     document.querySelector(preview).classList.remove('hidden');
//   }
// }

// export { previewImageOnFileSelect };
