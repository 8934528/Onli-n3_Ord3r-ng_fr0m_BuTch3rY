document.addEventListener('DOMContentLoaded', function () {
    // Form input animations
    const formInputs = document.querySelectorAll('.form-input');

    formInputs.forEach(input => {
        // Add focus effect
        input.addEventListener('focus', function () {
            this.parentElement.querySelector('i').style.color = '#8B4513';
            this.style.borderColor = '#8B4513';
        });

        // Remove focus effect
        input.addEventListener('blur', function () {
            this.parentElement.querySelector('i').style.color = '#A9A9A9';
            this.style.borderColor = '#D3D3D3';
        });
    });

    // Button hover effect
    const loginButton = document.querySelector('.login-button');

    loginButton.addEventListener('mouseenter', function () {
        this.style.transform = 'translateY(-2px)';
        this.style.boxShadow = '0 5px 15px rgba(0, 0, 0, 0.1)';
    });

    loginButton.addEventListener('mouseleave', function () {
        this.style.transform = 'translateY(0)';
        this.style.boxShadow = 'none';
    });

    // Forgot password link effect
    const forgotPassword = document.querySelector('.forgot-password');

    forgotPassword.addEventListener('mouseenter', function () {
        this.style.textDecoration = 'underline';
    });

    forgotPassword.addEventListener('mouseleave', function () {
        this.style.textDecoration = 'none';
    });

    // Remember me checkbox animation
    const rememberMe = document.querySelector('#rememberMe');
    const checkmark = document.querySelector('.checkmark');

    rememberMe.addEventListener('change', function () {
        if (this.checked) {
            checkmark.style.transform = 'scale(1.1)';
            setTimeout(() => {
                checkmark.style.transform = 'scale(1)';
            }, 200);
        }
    });
});