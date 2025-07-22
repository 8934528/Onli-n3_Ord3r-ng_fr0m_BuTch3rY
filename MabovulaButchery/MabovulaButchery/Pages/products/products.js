// Filter and Search Functionality
document.addEventListener('DOMContentLoaded', function () {
    // Get elements
    const searchInput = document.getElementById('searchInput');
    const filterButtons = document.querySelectorAll('.filter-btn');
    const productCards = document.querySelectorAll('.product-card');

    // Filter by category
    filterButtons.forEach(button => {
        button.addEventListener('click', function () {
            // Remove active class from all buttons
            filterButtons.forEach(btn => btn.classList.remove('active'));

            // Add active class to clicked button
            this.classList.add('active');

            const category = this.getAttribute('data-category');
            filterProducts(category, searchInput.value.toLowerCase());
        });
    });

    // Search functionality
    searchInput.addEventListener('input', function () {
        const searchTerm = this.value.toLowerCase();
        const activeCategory = document.querySelector('.filter-btn.active').getAttribute('data-category');
        filterProducts(activeCategory, searchTerm);
    });

    // Add to cart animation
    const addToCartButtons = document.querySelectorAll('.add-to-cart');

    addToCartButtons.forEach(button => {
        button.addEventListener('click', function () {
            // Animation effect
            const originalHTML = this.innerHTML;
            const originalBg = this.style.backgroundColor;

            this.innerHTML = '<i class="fa fa-check"></i> Added!';
            this.style.backgroundColor = '#4CAF50';

            // Reset after animation
            setTimeout(() => {
                this.innerHTML = originalHTML;
                this.style.backgroundColor = originalBg;
            }, 1500);
        });
    });

    // Set current year in footer
    document.getElementById('currentYear').textContent = new Date().getFullYear();

    // Filter products function
    function filterProducts(category, searchTerm) {
        productCards.forEach(card => {
            const cardName = card.getAttribute('data-name').toLowerCase();
            const cardCategory = card.getAttribute('data-category');

            // Check if card matches search term and active category
            const matchesSearch = searchTerm === '' || cardName.includes(searchTerm);
            const matchesCategory = category === 'all' || cardCategory === category;

            if (matchesSearch && matchesCategory) {
                card.style.display = 'flex';
            } else {
                card.style.display = 'none';
            }
        });
    }
});