// Counter Animation for About Section
function animateCounters() {
    const yearsCounter = document.getElementById('yearsCounter');
    const productsCounter = document.getElementById('productsCounter');
    const customersCounter = document.getElementById('customersCounter');

    const startYear = 1997;
    const currentYear = new Date().getFullYear();
    const years = currentYear - startYear;

    const animateValue = (id, start, end, duration) => {
        let startTimestamp = null;
        const step = (timestamp) => {
            if (!startTimestamp) startTimestamp = timestamp;
            const progress = Math.min((timestamp - startTimestamp) / duration, 1);
            id.innerHTML = Math.floor(progress * (end - start) + start);
            if (progress < 1) {
                window.requestAnimationFrame(step);
            }
        };
        window.requestAnimationFrame(step);
    };

    animateValue(yearsCounter, 0, years, 2000);
    animateValue(productsCounter, 0, 386, 2000);
    animateValue(customersCounter, 0, 128460, 2000);
}

// Scroll Reveal Animation
function scrollReveal() {
    const elements = document.querySelectorAll('.animate-card, .animate-testimonial');

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = 1;
                entry.target.style.transform = 'translateY(0)';
                observer.unobserve(entry.target);
            }
        });
    }, {
        threshold: 0.1
    });

    elements.forEach(element => {
        observer.observe(element);
    });
}

// Smooth Scrolling for Navigation Links
function smoothScroll() {
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();

            const targetId = this.getAttribute('href');
            if (targetId === '#') return;

            const targetElement = document.querySelector(targetId);
            if (targetElement) {
                window.scrollTo({
                    top: targetElement.offsetTop - 80,
                    behavior: 'smooth'
                });
            }
        });
    });
}

// Header Scroll Effect
function headerScrollEffect() {
    const header = document.querySelector('.header-section');
    let lastScroll = 0;

    window.addEventListener('scroll', () => {
        const currentScroll = window.pageYOffset;

        if (currentScroll <= 0) {
            header.style.boxShadow = 'none';
            header.style.background = 'var(--primary-brown)';
            return;
        }

        if (currentScroll > lastScroll && currentScroll > 100) {
            // Scroll down
            header.style.transform = 'translateY(-100%)';
            header.style.boxShadow = 'none';
        } else if (currentScroll < lastScroll) {
            // Scroll up
            header.style.transform = 'translateY(0)';
            header.style.background = 'rgba(139, 69, 19, 0.95)';
            header.style.boxShadow = '0 2px 10px rgba(0, 0, 0, 0.1)';
        }

        lastScroll = currentScroll;
    });
}

// Product Card Hover Animation
function productHoverAnimation() {
    const productCards = document.querySelectorAll('.product-card');

    productCards.forEach(card => {
        card.addEventListener('mouseenter', () => {
            const image = card.querySelector('.product-image');
            image.style.transform = 'scale(1.05)';
            image.style.transition = 'transform 0.5s ease';
        });

        card.addEventListener('mouseleave', () => {
            const image = card.querySelector('.product-image');
            image.style.transform = 'scale(1)';
        });
    });
}

// Form Input Animation
function formInputAnimation() {
    const formInputs = document.querySelectorAll('.form-input');

    formInputs.forEach(input => {
        input.addEventListener('focus', () => {
            const label = input.previousElementSibling;
            if (label && label.classList.contains('form-label')) {
                label.style.color = 'var(--primary-red)';
                label.style.transform = 'translateY(-5px)';
            }
        });

        input.addEventListener('blur', () => {
            const label = input.previousElementSibling;
            if (label && label.classList.contains('form-label')) {
                label.style.color = 'var(--dark-brown)';
                label.style.transform = 'translateY(0)';
            }
        });
    });
}

// Initialize all animations when DOM is loaded
document.addEventListener('DOMContentLoaded', function () {
    animateCounters();
    scrollReveal();
    smoothScroll();
    headerScrollEffect();
    productHoverAnimation();
    formInputAnimation();

    // Add current year to footer
    document.getElementById('currentYear').textContent = new Date().getFullYear();
});

// Handle button clicks (placeholder for ASP.NET functionality)
function handleButtonClick(buttonId) {
    console.log(`Button ${buttonId} clicked`);
    // In a real implementation, this would trigger ASP.NET postback or AJAX call
}