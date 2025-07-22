<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TnCs.aspx.cs" Inherits="MabovulaButchery.Pages.TnCs.TnCs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mabovula Butchery - Terms & Conditions</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="TnCs.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="tnc-container">
            <!-- Header with animated background -->
            <header class="tnc-header">
                <div class="header-overlay"></div>
                <div class="header-content">
                    <h1 class="logo-text">Mabovula</h1>
                    <p class="logo-subtext">Quality Meats Since 1997</p>
                    <h2>Terms & Conditions</h2>
                    <div class="scroll-indicator">
                        <i class="fas fa-chevron-down"></i>
                    </div>
                </div>
            </header>

            <!-- Main content with animated sections -->
            <main class="tnc-content">
                <section class="tnc-section intro-section" data-animation="fadeIn">
                    <div class="section-icon">
                        <i class="fas fa-scroll"></i>
                    </div>
                    <h3>Welcome to Mabovula Butchery</h3>
                    <p>These terms and conditions outline the rules and regulations for the use of Mabovula Butchery's Website and Services, located at our physical store in Eastern Cape, South Africa and our online platforms.</p>
                    <p>By accessing this website or using our services, we assume you accept these terms and conditions. Do not continue to use Mabovula Butchery if you do not agree to all of the terms and conditions stated on this page.</p>
                </section>

                <section class="tnc-section" data-animation="slideUp">
                    <h3><i class="fas fa-utensils"></i>Products & Services</h3>
                    <div class="accordion">
                        <button class="accordion-btn">
                            <span>Quality Assurance</span>
                            <i class="fas fa-plus"></i>
                        </button>
                        <div class="accordion-content">
                            <p>All our meat products are sourced from trusted local farmers and suppliers. We adhere to strict quality control measures to ensure freshness and safety.</p>
                            <p>Frozen goods are stored at optimal temperatures and thawing instructions are provided for your convenience.</p>
                        </div>
                    </div>

                    <div class="accordion">
                        <button class="accordion-btn">
                            <span>Product Availability</span>
                            <i class="fas fa-plus"></i>
                        </button>
                        <div class="accordion-content">
                            <p>While we strive to maintain stock of all advertised products, availability may vary due to seasonality and supplier constraints.</p>
                            <p>Special orders require 48 hours notice and may be subject to additional charges.</p>
                        </div>
                    </div>
                </section>

                <section class="tnc-section" data-animation="slideUp">
                    <h3><i class="fas fa-shopping-basket"></i>Purchases & Payments</h3>
                    <div class="feature-box">
                        <div class="feature-icon">
                            <i class="fas fa-money-bill-wave"></i>
                        </div>
                        <div class="feature-content">
                            <h4>Payment Methods</h4>
                            <p>We accept cash, credit/debit cards, and mobile payments. For bulk orders, EFT payments are required before delivery.</p>
                        </div>
                    </div>

                    <div class="feature-box">
                        <div class="feature-icon">
                            <i class="fas fa-percentage"></i>
                        </div>
                        <div class="feature-content">
                            <h4>Pricing & Discounts</h4>
                            <p>All prices are in South African Rand (ZAR) and include VAT. Special promotions and discounts cannot be combined unless specified.</p>
                        </div>
                    </div>
                </section>

                <section class="tnc-section" data-animation="slideUp">
                    <h3><i class="fas fa-truck"></i>Delivery & Collection</h3>
                    <div class="timeline">
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <div class="timeline-content">
                                <h4>Delivery Areas</h4>
                                <p>We deliver within a 20km radius of our store in Eastern Cape. Delivery fees vary based on distance and order size.</p>
                            </div>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <div class="timeline-content">
                                <h4>Collection</h4>
                                <p>Orders can be collected at our store during business hours. Please bring your order confirmation and ID.</p>
                            </div>
                        </div>
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <div class="timeline-content">
                                <h4>Time Slots</h4>
                                <p>Delivery slots are available between 9am-5pm, Monday to Saturday. Same-day delivery requires ordering before 12pm.</p>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="tnc-section" data-animation="slideUp">
                    <h3><i class="fas fa-exchange-alt"></i>Returns & Refunds</h3>
                    <div class="card">
                        <div class="card-header">
                            <i class="fas fa-exclamation-circle"></i>Quality Issues
                        </div>
                        <div class="card-body">
                            <p>If you're unsatisfied with product quality, please contact us within 24 hours of purchase with your receipt. We'll arrange for replacement or refund.</p>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header">
                            <i class="fas fa-ban"></i>Non-Returnable Items
                        </div>
                        <div class="card-body">
                            <p>For health and safety reasons, we cannot accept returns of thawed frozen products or perishable items that have left our temperature-controlled environment.</p>
                        </div>
                    </div>
                </section>

                <section class="tnc-section" data-animation="fadeIn">
                    <h3><i class="fas fa-shield-alt"></i>Privacy & Data Protection</h3>
                    <p>We collect personal information only to process your orders and improve our services. Your data is protected in accordance with South Africa's POPIA regulations.</p>
                    <p>We will never sell your information to third parties. Marketing communications are opt-in only.</p>
                </section>

                <section class="tnc-section" data-animation="fadeIn">
                    <h3><i class="fas fa-gavel"></i>General Conditions</h3>
                    <ul class="styled-list">
                        <li>We reserve the right to refuse service to anyone for any reason at any time.</li>
                        <li>Prices are subject to change without notice.</li>
                        <li>We are not responsible for any health issues resulting from improper storage or preparation of our products.</li>
                        <li>These terms are governed by the laws of South Africa.</li>
                    </ul>
                </section>

                <section class="tnc-section contact-section" data-animation="fadeIn">
                    <div class="contact-card">
                        <h3><i class="fas fa-question-circle"></i>Questions?</h3>
                        <p>Contact us for any clarification regarding these terms:</p>
                        <div class="contact-methods">
                            <div class="contact-method">
                                <i class="fas fa-phone"></i>
                                <span>+27 45 838 6260 | Komani</span>
                            </div>
                            <div class="contact-method">
                                <i class="fas fa-envelope"></i>
                                <span>info@mabovula.co.za</span>
                            </div>
                            <div class="contact-method">
                                <i class="fas fa-map-marker-alt"></i>
                                <span>20 Wellington St, Qonce (King William's Town), 5601, Eastern Cape, South Africa</span>
                            </div>
                        </div>
                    </div>
                </section>
            </main>

            <!-- Footer -->
            <footer class="tnc-footer">
                <div class="footer-content">
                    <div class="footer-logo">
                        <span class="logo-text">Mabovula</span>
                        <span class="logo-subtext">Since 1997</span>
                    </div>
                    <div class="footer-links">
                        <a href="#">Home</a>
                        <a href="#">Products</a>
                        <a href="#">About Us</a>
                        <a href="#">Contact</a>
                    </div>
                    <div class="footer-social">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
                <div class="footer-bottom">
                    <p>&copy; 1997-2025 Mabovula Butchery. All Rights Reserved.</p>
                    <p>Last Updated: <span id="currentDate"></span></p>
                </div>
            </footer>
        </div>
    </form>

    <script src="TnCs.js"></script>
</body>
</html>
