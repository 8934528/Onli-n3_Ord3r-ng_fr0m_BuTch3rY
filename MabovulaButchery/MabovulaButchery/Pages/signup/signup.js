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
    const registerButton = document.querySelector('.register-button');

    registerButton.addEventListener('mouseenter', function () {
        this.style.transform = 'translateY(-2px)';
        this.style.boxShadow = '0 5px 15px rgba(0, 0, 0, 0.1)';
    });

    registerButton.addEventListener('mouseleave', function () {
        this.style.transform = 'translateY(0)';
        this.style.boxShadow = 'none';
    });

    // Terms checkbox animation
    const agreeTerms = document.querySelector('#agreeTerms');
    const termsCheckmark = document.querySelector('.terms-checkbox .checkmark');

    agreeTerms.addEventListener('change', function () {
        if (this.checked) {
            termsCheckmark.style.transform = 'scale(1.1)';
            setTimeout(() => {
                termsCheckmark.style.transform = 'scale(1)';
            }, 200);
        }
    });

    // Password strength indicator (visual only)
    const passwordInput = document.querySelector('#txtPassword');
    const passwordStrength = document.createElement('div');
    passwordStrength.className = 'password-strength';
    passwordInput.parentNode.insertBefore(passwordStrength, passwordInput.nextSibling);

    passwordInput.addEventListener('input', function () {
        const strength = calculatePasswordStrength(this.value);
        updateStrengthIndicator(strength);
    });

    function calculatePasswordStrength(password) {
        if (password.length === 0) return 0;
        if (password.length < 6) return 1;
        if (password.length < 8) return 2;
        if (/[A-Z]/.test(password) && /[0-9]/.test(password) && /[^A-Za-z0-9]/.test(password)) return 4;
        if (/[A-Z]/.test(password) || /[0-9]/.test(password)) return 3;
        return 2;
    }

    function updateStrengthIndicator(strength) {
        passwordStrength.innerHTML = '';
        const strengthText = ['Very Weak', 'Weak', 'Medium', 'Strong', 'Very Strong'][strength];
        const strengthColors = ['#ff4d4d', '#ff7b25', '#ffcc00', '#a4d007', '#00b300'];

        const indicator = document.createElement('div');
        indicator.className = 'strength-bar';
        indicator.style.width = `${(strength + 1) * 20}%`;
        indicator.style.backgroundColor = strengthColors[strength];

        const text = document.createElement('span');
        text.className = 'strength-text';
        text.textContent = strengthText;
        text.style.color = strengthColors[strength];

        passwordStrength.appendChild(indicator);
        passwordStrength.appendChild(text);
    }
});