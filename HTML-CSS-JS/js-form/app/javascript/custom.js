
document.addEventListener('DOMContentLoaded', function () {
    const emailInput = document.getElementById('email');
    const emailErrorMessage = document.getElementById('email-error-message');

    const passwordInput = document.getElementById('password');
    const confirmPasswordInput = document.getElementById('confirm_password');
    const passwordMatchErrorMessage = document.getElementById('password-match-error-message');

    emailInput.addEventListener('input', validateEmail);

    confirmPasswordInput && passwordInput.addEventListener('input', validatePasswordMatch);
    confirmPasswordInput && confirmPasswordInput.addEventListener('input', validatePasswordMatch);


    function validateEmail() {
        const emailRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
        const isValid = emailInput.value.match(emailRegex);
        displayErrorMessage(emailErrorMessage, isValid, 'Please enter a valid email address.');
    }
    function validateMobileNumber() {
        const mobileInput = document.getElementById('phone');
        const mobileRegex = /^[789]\d{9}$/;
        if(mobileInput.value.match(mobileRegex)){
            return true;
        }
        else
        {
            return false;
        }
    }
    function validatePasswordMatch() {
        const isValid = passwordInput.value === confirmPasswordInput.value;
        displayErrorMessage(passwordMatchErrorMessage, isValid, 'Password and Confirm Password should match.');
    }

    function displayErrorMessage(element, isValid, message) {
        element.textContent = isValid ? '' : message;
    }

    const form = document.getElementById('registrationForm');
    if (form){
        form.addEventListener('submit', function (event) {
            const emailRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            const isValid = emailInput.value.match(emailRegex);
            if (!isValid) {
                alert('Please enter a valid email address.');
                event.preventDefault();
            }
            if (!validateMobileNumber()) {
                alert('Please enter a valid mobile number.');
                event.preventDefault();
            }

            const isValidPass = passwordInput.value === confirmPasswordInput.value;
            if (!isValidPass) {
                alert('Password and Confirm Password should match.');
                event.preventDefault();
            }
        });
    }
});

function myFunction() {
    var x = document.getElementById("password");
    var i = document.querySelector("#icon-tag");
    if (x.type === "password") {
      x.type = "text";
      i.classList.remove("fa-eye");
      i.classList.add("fa-eye-slash");
    } else {
      x.type = "password";
      i.classList.remove("fa-eye-slash");
      i.classList.add("fa-eye");
    }
}


