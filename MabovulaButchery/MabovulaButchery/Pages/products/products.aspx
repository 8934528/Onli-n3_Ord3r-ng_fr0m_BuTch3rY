<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="MabovulaButchery.Pages.products.products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mabovula Butchery - Our Products</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="products.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header Section -->
        <header class="products-header">
            <div class="header-container">
                <div class="logo-container">
                    <h1 class="logo-text">Mabovula</h1>
                    <p class="logo-subtext">Butchery & Frozen Goods</p>
                </div>
                <nav class="nav-menu">
                    <ul>
                        <li><a href="../Butchery/Butchery.aspx" class="nav-link"><i class="fa fa-home"></i>Home</a></li>
                        <li><a href="#" class="nav-link active"><i class="fa fa-cutlery"></i>Products</a></li>
                        <li><a href="../Butchery/Butchery.aspx#about" class="nav-link"><i class="fa fa-info-circle"></i>About</a></li>
                        <li><a href="../Butchery/Butchery.aspx#contact" class="nav-link"><i class="fa fa-envelope"></i>Contact</a></li>
                    </ul>
                </nav>
                <div class="header-cta">
                    <a href="../Butchery/Butchery.aspx#contact" class="cta-button">Order Now</a>
                </div>
            </div>
        </header>

        <!-- Products Hero Section -->
        <section class="products-hero">
            <div class="hero-content">
                <h1 class="hero-title">Our Quality Products</h1>
                <p class="hero-subtitle">Fresh meats, frozen goods, and farm-fresh produce</p>
            </div>
        </section>

        <!-- Products Filter Section -->
        <section class="products-filter">
            <div class="filter-container">
                <div class="search-box">
                    <i class="fa fa-search"></i>
                    <input type="text" id="searchInput" placeholder="Search products..." aria-label="Search products" />
                </div>

                <div class="category-filter">
                    <div class="filter-title">Categories:</div>
                    <div class="filter-buttons">
                        <button type="button" class="filter-btn active" data-category="all">All Products</button>
                        <button type="button" class="filter-btn" data-category="meat"><i class="fa fa-cutlery"></i>Meats</button>
                        <button type="button" class="filter-btn" data-category="veggies"><i class="fa fa-leaf"></i>Vegetables</button>
                        <button type="button" class="filter-btn" data-category="fruits"><i class="fa fa-apple"></i>Fruits</button>
                        <button type="button" class="filter-btn" data-category="other"><i class="fa fa-shopping-basket"></i>Other</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Products Grid Section -->
        <section class="products-grid">
            <div class="grid-container" id="productsContainer">
                <!-- Meat Products -->
                <div class="product-card" data-category="meat" data-name="beef steak">
                    <div class="product-image" style="background-image: url('../../Images/products/beef.jpg')">
                        <span class="product-badge">Fresh</span>
                    </div>
                    <div class="product-details">
                        <h3>Beef Steak</h3>
                        <p>Premium cut beef steak, perfect for braai</p>
                        <div class="product-price">R89.99/kg</div>
                        <button type="button" class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="meat" data-name="chicken breasts">
                    <div class="product-image" style="background-image: url('../../Images/chicken.jpg')">
                        <span class="product-badge">Fresh</span>
                    </div>
                    <div class="product-details">
                        <h3>Chicken Breasts</h3>
                        <p>Skinless chicken breasts, hormone-free</p>
                        <div class="product-price">R65.50/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="meat" data-name="boerewors">
                    <div class="product-image" style="background-image: url('../../Images/products/boere.jpg')">
                        <span class="product-badge">Fresh</span>
                    </div>
                    <div class="product-details">
                        <h3>Boerewors</h3>
                        <p>Traditional South African sausage</p>
                        <div class="product-price">R95.00/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="meat" data-name="beef mince">
                    <div class="product-image" style="background-image: url('../../Images/products/mince.jpg')">
                        <span class="product-badge">Fresh</span>
                    </div>
                    <div class="product-details">
                        <h3>Beef Mince</h3>
                        <p>Lean beef mince, perfect for burgers</p>
                        <div class="product-price">R75.25/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="meat" data-name="pork chops">
                    <div class="product-image" style="background-image: url('../../Images/products/pork.jpg')">
                        <span class="product-badge">Fresh</span>
                    </div>
                    <div class="product-details">
                        <h3>Pork Chops</h3>
                        <p>Juicy pork chops, bone-in</p>
                        <div class="product-price">R68.75/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="meat" data-name="fish fillets">
                    <div class="product-image" style="background-image: url('../../Images/products/fish.jpg')">
                        <span class="product-badge">Frozen</span>
                    </div>
                    <div class="product-details">
                        <h3>Fish Fillets</h3>
                        <p>Hake fillets, individually frozen</p>
                        <div class="product-price">R110.00/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="meat" data-name="chicken livers">
                    <div class="product-image" style="background-image: url('../../Images/products/liver.jpg')">
                        <span class="product-badge">Fresh</span>
                    </div>
                    <div class="product-details">
                        <h3>Chicken Livers</h3>
                        <p>Fresh chicken livers, great for pâté</p>
                        <div class="product-price">R45.00/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <!-- Vegetables -->
                <div class="product-card" data-category="veggies" data-name="potatoes">
                    <div class="product-image" style="background-image: url('../../Images/products/potatoes.jpg')">
                        <span class="product-badge veggie-badge">Veggie</span>
                    </div>
                    <div class="product-details">
                        <h3>Potatoes</h3>
                        <p>Fresh potatoes, perfect for roasting</p>
                        <div class="product-price">R25.00/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="veggies" data-name="onions">
                    <div class="product-image" style="background-image: url('../../Images/products/onions.jpg')">
                        <span class="product-badge veggie-badge">Veggie</span>
                    </div>
                    <div class="product-details">
                        <h3>Onions</h3>
                        <p>Brown onions, 1kg bag</p>
                        <div class="product-price">R15.00/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="veggies" data-name="carrots">
                    <div class="product-image" style="background-image: url('../../Images/products/carrots.jpg')">
                        <span class="product-badge veggie-badge">Veggie</span>
                    </div>
                    <div class="product-details">
                        <h3>Carrots</h3>
                        <p>Fresh carrots, 1kg bag</p>
                        <div class="product-price">R18.50/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="veggies" data-name="tomatoes">
                    <div class="product-image" style="background-image: url('../../Images/products/tomatos.jpg')">
                        <span class="product-badge veggie-badge">Veggie</span>
                    </div>
                    <div class="product-details">
                        <h3>Tomatoes</h3>
                        <p>Vine-ripened tomatoes</p>
                        <div class="product-price">R22.00/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="veggies" data-name="bell peppers">
                    <div class="product-image" style="background-image: url('../../Images/products/pepers.jpg')">
                        <span class="product-badge veggie-badge">Veggie</span>
                    </div>
                    <div class="product-details">
                        <h3>Bell Peppers</h3>
                        <p>Mixed color bell peppers</p>
                        <div class="product-price">R35.00/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="veggies" data-name="broccoli">
                    <div class="product-image" style="background-image: url('../../Images/products/broccoli.jpg')">
                        <span class="product-badge veggie-badge">Veggie</span>
                    </div>
                    <div class="product-details">
                        <h3>Broccoli</h3>
                        <p>Fresh broccoli heads</p>
                        <div class="product-price">R28.00/head</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="veggies" data-name="butternut">
                    <div class="product-image" style="background-image: url('../../Images/products/Butternut.jpg')">
                        <span class="product-badge veggie-badge">Veggie</span>
                    </div>
                    <div class="product-details">
                        <h3>Butternut</h3>
                        <p>Sweet butternut squash</p>
                        <div class="product-price">R20.00/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <!-- Fruits -->
                <div class="product-card" data-category="fruits" data-name="oranges">
                    <div class="product-image" style="background-image: url('../../Images/products/oranges.jpg')">
                        <span class="product-badge fruit-badge">Fruit</span>
                    </div>
                    <div class="product-details">
                        <h3>Oranges</h3>
                        <p>Sweet navel oranges</p>
                        <div class="product-price">R12.00/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="fruits" data-name="apples">
                    <div class="product-image" style="background-image: url('../../Images/products/apples.jpg')">
                        <span class="product-badge fruit-badge">Fruit</span>
                    </div>
                    <div class="product-details">
                        <h3>Apples</h3>
                        <p>Crisp Royal Gala apples</p>
                        <div class="product-price">R18.50/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="fruits" data-name="bananas">
                    <div class="product-image" style="background-image: url('../../Images/products/banana1.jpeg')">
                        <span class="product-badge fruit-badge">Fruit</span>
                    </div>
                    <div class="product-details">
                        <h3>Bananas</h3>
                        <p>Ripe bananas, bunch</p>
                        <div class="product-price">R15.00/kg</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="fruits" data-name="watermelon">
                    <div class="product-image" style="background-image: url('../../Images/products/watermellon.jpeg')">
                        <span class="product-badge fruit-badge">Fruit</span>
                    </div>
                    <div class="product-details">
                        <h3>Watermelon</h3>
                        <p>Sweet seedless watermelon</p>
                        <div class="product-price">R35.00/ea</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="fruits" data-name="pineapple">
                    <div class="product-image" style="background-image: url('../../Images/products/pinerples.jpg')">
                        <span class="product-badge fruit-badge">Fruit</span>
                    </div>
                    <div class="product-details">
                        <h3>Pineapple</h3>
                        <p>Sweet golden pineapple</p>
                        <div class="product-price">R45.00/ea</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <!-- Other Products -->
                <div class="product-card" data-category="other" data-name="cooking oil">
                    <div class="product-image" style="background-image: url('../../Images/products/oil.jpg')">
                        <span class="product-badge other-badge">Other</span>
                    </div>
                    <div class="product-details">
                        <h3>Cooking Oil</h3>
                        <p>2L sunflower oil</p>
                        <div class="product-price">R65.00/bottle</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>

                <div class="product-card" data-category="other" data-name="eggs">
                    <div class="product-image" style="background-image: url('../../Images/products/eggs.jpg')">
                        <span class="product-badge other-badge">Other</span>
                    </div>
                    <div class="product-details">
                        <h3>Eggs</h3>
                        <p>Free-range eggs, 12 pack</p>
                        <div class="product-price">R32.00/dozen</div>
                        <button class="add-to-cart"><i class="fa fa-cart-plus"></i>Add to Cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="products-footer">
            <div class="footer-container">
                <div class="footer-logo">
                    <h2 class="logo-text">Mabovula</h2>
                    <p class="logo-subtext">Butchery & Frozen Goods</p>
                </div>

                <div class="footer-links">
                    <h3 class="footer-title">Quick Links</h3>
                    <ul>
                        <li><a href="../Butchery/Butchery.aspx" class="footer-link"><i class="fa fa-home"></i>Home</a></li>
                        <li><a href="#" class="footer-link"><i class="fa fa-cutlery"></i>Products</a></li>
                        <li><a href="../Butchery/Butchery.aspx#about" class="footer-link"><i class="fa fa-info-circle"></i>About</a></li>
                        <li><a href="../Butchery/Butchery.aspx#contact" class="footer-link"><i class="fa fa-envelope"></i>Contact</a></li>
                    </ul>
                </div>

                <div class="footer-contact">
                    <h3 class="footer-title">Contact Us</h3>
                    <ul>
                        <li><i class="fa fa-map-marker"></i>Qonce & Komani, EC</li>
                        <li><i class="fa fa-phone"></i>+27 43 642 2907</li>
                        <li><i class="fa fa-envelope"></i>info@mabovula.co.za</li>
                    </ul>
                </div>

                <div class="footer-social">
                    <h3 class="footer-title">Follow Us</h3>
                    <div class="social-icons">
                        <a href="https://www.facebook.com/mabovulaqtn/" class="social-icon" target="_blank" rel="noopener noreferrer" aria-label="Facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="social-icon" aria-label="Instagram"><i class="fa fa-instagram"></i></a>
                        <a href="#" class="social-icon" aria-label="Twitter"><i class="fa fa-twitter"></i></a>
                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <p>&copy; 1997-<span id="currentYear"></span> Mabovula Butchery. All Rights Reserved.</p>
            </div>
        </footer>
    </form>

    <script src="products.js"></script>
    <script src="../../Scripts/bootstrap.js"></script>
</body>
</html>
