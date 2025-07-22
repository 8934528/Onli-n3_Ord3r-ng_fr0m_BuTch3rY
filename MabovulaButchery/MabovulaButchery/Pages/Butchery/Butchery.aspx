<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Butchery.aspx.cs" Inherits="MabovulaButchery.Pages.Butchery.Butchery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mabovula Butchery - Quality Meats Since 1997</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <link href="Butchery.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header Section -->
        <header class="header-section">
            <div class="header-container">
                <div class="logo-container animate-logo">
                    <h1 class="logo-text">Mabovula</h1>
                    <p class="logo-subtext">Butchery & Frozen Goods</p>
                </div>
                <nav class="nav-menu">
                    <ul>
                        <li><a href="#home" class="nav-link"><i class="fa fa-home"></i>Home</a></li>
                        <li><a href="#products" class="nav-link"><i class="fa fa-cutlery"></i>Products</a></li>
                        <li><a href="#about" class="nav-link"><i class="fa fa-info-circle"></i>About</a></li>
                        <li><a href="#contact" class="nav-link"><i class="fa fa-envelope"></i>Contact</a></li>
                    </ul>
                </nav>
                <div class="header-cta">
                    <asp:Button ID="btnOrderNow" runat="server" Text="Order Now" CssClass="cta-button" />
                </div>
            </div>
        </header>

        <!-- Hero Section -->
        <section id="home" class="hero-section">
            <div class="hero-overlay"></div>
            <div class="hero-content">
                <h2 class="hero-title animate-title">Premium Quality Meats Since 1997</h2>
                <p class="hero-subtitle">From our family to yours - the finest cuts in Eastern Cape</p>
                <asp:Button ID="btnExplore" runat="server" Text="Explore Our Products" CssClass="cta-button hero-button" />
            </div>
        </section>

        <!-- Featured Products -->
        <section id="products" class="products-section">
            <div class="section-header">
                <h2 class="section-title">Our Featured Products</h2>
                <div class="section-divider"></div>
            </div>

            <div class="products-container">
                <div class="product-card animate-card">
                    <div class="product-image frozen-image">
                        <span class="product-badge">Fresh</span>
                    </div>
                    <div class="product-details">
                        <h3><i class="fa fa-cutlery"></i>Premium Beef Cuts</h3>
                        <p>Our signature beef cuts, flash frozen to preserve freshness</p>
                        <asp:Button ID="btnBeef" runat="server" Text="View Options" CssClass="product-button" />
                    </div>
                </div>

                <div class="product-card animate-card">
                    <div class="product-image fresh-image">
                        <span class="product-badge fresh-badge">Frozen</span>
                    </div>
                    <div class="product-details">
                        <h3><i class="fa fa-leaf"></i>Farmhouse Chicken</h3>
                        <p>Locally sourced, free-range chicken delivered daily</p>
                        <asp:Button ID="btnChicken" runat="server" Text="View Options" CssClass="product-button" />
                    </div>
                </div>

                <div class="product-card animate-card">
                    <div class="product-image boere-image">
                        <span class="product-badge">Fresh</span>
                    </div>
                    <div class="product-details">
                        <h3><i class="fa fa-fire"></i>Boerewors Selection</h3>
                        <p>Traditional South African sausages made with secret family recipes</p>
                        <asp:Button ID="btnBoerewors" runat="server" Text="View Options" CssClass="product-button" />
                    </div>
                </div>
            </div>

            <div class="view-all-container">
                <asp:Button ID="btnViewAll" runat="server" Text="View All Products" CssClass="cta-button view-all-button" />
            </div>
        </section>

        <!-- About Section -->
        <section id="about" class="about-section">
            <div class="about-container">
                <div class="about-image animate-about-image">
                    <!-- Image will be set in CSS -->
                </div>
                <div class="about-content animate-about-content">
                    <h2 class="section-title">Our Story</h2>
                    <div class="section-divider"></div>
                    <p class="about-text">
                        Established in 1997 in the heart of Eastern Cape, Mabovula Butchery has been serving the community with 
                        premium quality meats and frozen goods for over two decades. What started as a small family business 
                        has grown into a trusted name for quality and freshness.
                    </p>
                    <p class="about-text">
                        We take pride in sourcing our products locally and maintaining traditional butchery standards while 
                        incorporating modern freezing techniques to ensure our customers get the best possible products.
                    </p>
                    <div class="about-stats">
                        <div class="stat-item">
                            <span class="stat-number" id="yearsCounter">0</span>
                            <span class="stat-label"><i class="fa fa-history"></i>Years Serving You</span>
                        </div>
                        <div class="stat-item">
                            <span class="stat-number" id="productsCounter">0</span>
                            <span class="stat-label"><i class="fa fa-barcode"></i>Quality Products</span>
                        </div>
                        <div class="stat-item">
                            <span class="stat-number" id="customersCounter">0</span>
                            <span class="stat-label"><i class="fa fa-users"></i>Happy Customers</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="testimonials-section">
            <div class="section-header">
                <h2 class="section-title">What Our Customers Say</h2>
                <div class="section-divider"></div>
            </div>

            <div class="testimonials-container">
                <div class="testimonial-card animate-testimonial">
                    <div class="testimonial-quote">"</div>
                    <p class="testimonial-text">
                        The best butchery in Eastern Cape! Their frozen goods taste as fresh as the day they were packaged.
                    </p>
                    <div class="testimonial-author">
                        <span class="author-name">- Nomvula K.</span>
                        <span class="author-location">Port Elizabeth</span>
                    </div>
                </div>

                <div class="testimonial-card animate-testimonial">
                    <div class="testimonial-quote">"</div>
                    <p class="testimonial-text">
                        Mabovula has been my go-to butchery for 15 years. Consistent quality and excellent service.
                    </p>
                    <div class="testimonial-author">
                        <span class="author-name">- Thando M.</span>
                        <span class="author-location">East London</span>
                    </div>
                </div>

                <div class="testimonial-card animate-testimonial">
                    <div class="testimonial-quote">"</div>
                    <p class="testimonial-text">
                        Their boerewors is legendary! I drive 50km just to stock up for braai weekends.
                    </p>
                    <div class="testimonial-author">
                        <span class="author-name">- Sipho D.</span>
                        <span class="author-location">Grahamstown</span>
                    </div>
                </div>
            </div>
        </section>

        <!-- Contact Section -->
        <section id="contact" class="contact-section">
            <div class="contact-container">
                <div class="contact-info animate-contact-info">
                    <h2 class="section-title">Visit Us</h2>
                    <div class="section-divider"></div>

                    <div class="info-item">
                        <span class="info-icon"><i class="fa fa-map-marker"></i></span>
                        <div class="info-text-container">
                            <span class="info-text">20 Wellington St, Qonce (King William's Town), 5601, Eastern Cape, South Africa</span>
                            <span class="info-text">79 Robinson Road, Komani (Queenstown), 5319, Eastern Cape, South Africa</span>
                        </div>
                    </div>

                    <div class="info-item">
                        <span class="info-icon"><i class="fa fa-phone"></i></span>
                        <div class="info-text-container">
                            <span class="info-text">+27 43 642 2907 | Qonce</span>
                            <span class="info-text">+27 45 838 6260 | Komani</span>
                        </div>
                    </div>

                    <div class="info-item">
                        <span class="info-icon"><i class="fa fa-envelope"></i></span>
                        <span class="info-text">info@mabovulabutchery.co.za</span>
                    </div>

                    <div class="info-item">
                        <span class="info-icon"><i class="fa fa-clock-o"></i></span>
                        <div class="hours-container">
                            <span class="info-text">Mon-Fri: 7:00 AM - 6:00 PM</span>
                            <span class="info-text">Sat: 8:00 AM - 4:00 PM</span>
                            <span class="info-text">Sun: 9:00 AM - 2:00 PM</span>
                        </div>
                    </div>

                    <div class="social-links">
                        <a href="https://www.facebook.com/mabovulaqtn/" class="social-icon" target="_blank" rel="noopener noreferrer">
                            <i class="fa fa-facebook"></i>Facebook
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fa fa-instagram"></i>Instagram
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fa fa-twitter"></i>Twitter
                        </a>
                    </div>
                </div>

                <div class="contact-form animate-contact-form">
                    <h2 class="section-title">Get In Touch</h2>
                    <div class="section-divider"></div>

                    <div class="form-floating mb-3">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Your Name"></asp:TextBox>
                        <asp:Label ID="lblName" runat="server" Text="Your Name" AssociatedControlID="txtName"></asp:Label>
                    </div>

                    <div class="form-floating mb-3">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Email Address"></asp:TextBox>
                        <asp:Label ID="lblEmail" runat="server" Text="Email Address" AssociatedControlID="txtEmail"></asp:Label>
                    </div>

                    <div class="form-floating mb-3">
                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Subject"></asp:TextBox>
                        <asp:Label ID="lblSubject" runat="server" Text="Subject" AssociatedControlID="txtSubject"></asp:Label>
                    </div>

                    <div class="form-floating mb-3">
                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Message" Style="height: 150px"></asp:TextBox>
                        <asp:Label ID="lblMessage" runat="server" Text="Message" AssociatedControlID="txtMessage"></asp:Label>
                    </div>

                    <asp:Button ID="btnSendMessage" runat="server" Text="Send Message" CssClass="cta-button w-100 py-3" />
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="footer-section">
            <div class="footer-container">
                <div class="footer-logo">
                    <h2 class="logo-text">Mabovula</h2>
                    <p class="logo-subtext">Butchery & Frozen Goods</p>
                </div>

                <div class="footer-links">
                    <h3 class="footer-title">Quick Links</h3>
                    <ul>
                        <li><a href="#home" class="footer-link"><i class="fa fa-home"></i>Home</a></li>
                        <li><a href="#products" class="footer-link"><i class="fa fa-cutlery"></i>Products</a></li>
                        <li><a href="#about" class="footer-link"><i class="fa fa-info-circle"></i>About Us</a></li>
                        <li><a href="#contact" class="footer-link"><i class="fa fa-envelope"></i>Contact</a></li>
                    </ul>
                </div>

                <div class="footer-products">
                    <h3 class="footer-title">Our Products</h3>
                    <ul>
                        <li><a href="#" class="footer-link"><i class="fa fa-snowflake-o"></i>Frozen Meats</a></li>
                        <li><a href="#" class="footer-link"><i class="fa fa-leaf"></i>Fresh Meats</a></li>
                        <li><a href="#" class="footer-link"><i class="fa fa-fire"></i>Boerewors</a></li>
                        <li><a href="#" class="footer-link"><i class="fa fa-star"></i>Specialty Items</a></li>
                    </ul>
                </div>

                <div class="footer-contact">
                    <h3 class="footer-title">Contact Info</h3>
                    <ul>
                        <li><i class="fa fa-map-marker"></i>Qonce & Komani, EC</li>
                        <li><i class="fa fa-phone"></i>+27 43 642 2907</li>
                        <li><i class="fa fa-envelope"></i>info@mabovula.co.za</li>
                    </ul>
                </div>
            </div>

            <div class="footer-bottom">
                <p>
                    &copy; 1997-<span id="currentYear"></span> Mabovula Butchery. All Rights Reserved.
                </p>
            </div>
        </footer>
    </form>

    <script src="Butchery.js"></script>
    <script src="../../Scripts/bootstrap.js"></script>
</body>
</html>
