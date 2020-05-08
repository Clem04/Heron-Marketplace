const confirmation_message = () => {

 const apply_button = document.querySelectorById(".apply-btn")
 const merchant_form = document.querySelector("#form-merchant.form-merchant")
 const applicant_confirmation = document.querySelector("#confirmation-merchant.confirmation-message")

  apply_button.addEventListener('click', event => {
    event.currentTarget.classList.add('active');
    merchant_form.classList.add('hidden')
    applicant_confirmation.classList.add('active')
  });
}

export { confirmation_message };
