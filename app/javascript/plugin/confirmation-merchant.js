const confirmation_message = () => {

 const apply_button = document.querySelector(".apply-btn");
 const merchant_form = document.querySelector("#form-merchant");
 const applicant_confirmation = document.querySelector("#confirmation-merchant");

  apply_button.addEventListener('click', event => {
    merchant_form.classList.add('hidden');
    applicant_confirmation.classList.remove('hidden');
  });
}

export { confirmation_message };
