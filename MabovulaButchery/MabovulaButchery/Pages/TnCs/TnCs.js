document.addEventListener('DOMContentLoaded', function () {
    // Set current date in footer
    const currentDate = new Date();
    const options = { year: 'numeric', month: 'long', day: 'numeric' };
    document.getElementById('currentDate').textContent = currentDate.toLocaleDateString('en-ZA', options);

    // Accordion functionality
    const accordionBtns = document.querySelectorAll('.accordion-btn');
    accordionBtns.forEach(btn => {
        btn.addEventListener('click', function () {
            this.classList.toggle('active');
            const content = this.nextElementSibling;
            if (content.style.maxHeight) {
                content.style.maxHeight = null;
            } else {
                content.style.maxHeight = content.scrollHeight + 'px';
            }
        });
    });

    // Animate sections when they come into view
    const animateOnScroll = function () {
        const sections = document.querySelectorAll('.tnc-section');
        const windowHeight = window.innerHeight;
        const windowTop = window.scrollY;
        const windowBottom = windowTop + windowHeight;

        sections.forEach(section => {
            const sectionTop = section.offsetTop;
            const sectionBottom = sectionTop + section.offsetHeight;
            const animation = section.getAttribute('data-animation');

            // Check if section is in viewport
            if (sectionBottom >= windowTop && sectionTop <= windowBottom) {
                section.classList.add('visible');
                section.style.animation = `${animation} 0.8s ease-out forwards`;
            }
        });
    };

    // Initial check on load
    animateOnScroll();

    // Check on scroll
    window.addEventListener('scroll', animateOnScroll);

    // Smooth scrolling for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                window.scrollTo({
                    top: target.offsetTop - 100,
                    behavior: 'smooth'
                });
            }
        });
    });

    // Add meat particles animation for fun
    createMeatParticles();

    // Easter egg - Butcher cleaver animation on click
    document.addEventListener('click', function (e) {
        createCleaver(e.clientX, e.clientY);
    });
});

// Fun meat particles animation
function createMeatParticles() {
    const colors = ['#8B4513', '#A52A2A', '#5D2906', '#A0522D', '#800000'];
    const container = document.querySelector('.tnc-container');

    for (let i = 0; i < 20; i++) {
        const particle = document.createElement('div');
        particle.classList.add('meat-particle');

        // Random properties
        const size = Math.random() * 20 + 10;
        const color = colors[Math.floor(Math.random() * colors.length)];
        const left = Math.random() * 100;
        const animationDuration = Math.random() * 20 + 10;
        const animationDelay = Math.random() * 5;

        // Apply styles
        particle.style.width = `${size}px`;
        particle.style.height = `${size}px`;
        particle.style.backgroundColor = color;
        particle.style.left = `${left}%`;
        particle.style.animationDuration = `${animationDuration}s`;
        particle.style.animationDelay = `${animationDelay}s`;

        // Random shape
        if (Math.random() > 0.5) {
            particle.style.borderRadius = '50%';
        } else {
            particle.style.borderRadius = '20% 50% 30% 40%';
        }

        container.appendChild(particle);
    }
}

// Easter egg - Butcher cleaver animation
function createCleaver(x, y) {
    const cleaver = document.createElement('div');
    cleaver.innerHTML = '🔪';
    cleaver.style.position = 'fixed';
    cleaver.style.left = `${x}px`;
    cleaver.style.top = `${y}px`;
    cleaver.style.fontSize = '2rem';
    cleaver.style.zIndex = '1000';
    cleaver.style.pointerEvents = 'none';
    cleaver.style.transform = 'rotate(0deg)';
    cleaver.style.animation = 'cleaverSpin 0.5s linear forwards';

    document.body.appendChild(cleaver);

    // Remove after animation
    setTimeout(() => {
        cleaver.remove();
    }, 500);
}

// Add dynamic styles for particles and cleaver
const style = document.createElement('style');
style.textContent = `
    @keyframes float {
        0% {
            transform: translateY(0) rotate(0deg);
            opacity: 1;
        }
        100% {
            transform: translateY(-100vh) rotate(360deg);
            opacity: 0;
        }
    }
    
    @keyframes cleaverSpin {
        0% {
            transform: rotate(0deg) scale(1);
        }
        100% {
            transform: rotate(360deg) scale(0);
        }
    }
    
    .meat-particle {
        position: absolute;
        bottom: -50px;
        animation: float linear infinite;
        z-index: 1;
        opacity: 0.7;
    }
`;
document.head.appendChild(style);