-- We add our page content
-- Tables we add to are...
	-- page_content
	-- page_sections
BEGIN TRANSACTION;

-- Insert About Page Data (first page content then page sections)
INSERT INTO page_content (route, title)
VALUES('about', 'About Us');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'Welcome to The Thermal Reviewer, your one-stop source for all things thermal imaging. Whether you’re a hunter, outdoor enthusiast, or professional, our website provides in-depth reviews and analysis of the best thermal scopes, binoculars, and monoculars on the market.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'Our team of experts has extensive knowledge and experience with thermal imaging technology and is dedicated to providing you with accurate, unbiased, and up-to-date information. Our reviews are based on extensive research, hands-on testing, and customer feedback, so you can make an informed decision when purchasing your next thermal imaging device.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'On our website, you will find detailed reviews of the top thermal scopes, binoculars, and monoculars, including their features, specifications, pros and cons, and much more. We also provide helpful guides and tutorials to assist you in making the most of your thermal imaging device and getting the most out of your outdoor adventures.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'We believe that every person should have access to the best information when it comes to thermal imaging, and that’s why we created The Thermal Reviewer. Whether you’re a seasoned pro or just starting out, our website is the perfect resource for anyone looking to buy the best thermal imaging device for their needs.Browse our site today and discover the world of thermal imaging like never before.');


-------------------------------------------------------

-- Insert Page Contents (first page content then page sections)
-- Page Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title)
VALUES('pulsar-thermion-2-xq50', 'scope’s', 'https://www.amazon.com/Pulsar-Thermion-XQ50-Thermal-Riflescope/dp/B0934RXGM2?crid=4X0SB17DF082&keywords=Pulsar%2BThermion%2B2%2BXQ50&qid=1684259903&sprefix=pulsar%2Bthermion%2B2%2Bxq50%2Caps%2C92&sr=8-4&th=1&linkCode=ll1&tag=thermalrevi0d-20&linkId=b6e0bba90353b37836b887bf48def93b&language=en_US&ref_=as_li_ss_tl', 'View Price', 'Pulsar Thermion 2 XQ50');

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(2, '\\sectionImage1.jpg', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(2, 'none', 'The Thermion 2 XQ50 is a premium thermal imaging riflescope from Pulsar that is designed for professional hunting, pest control, and personal security. The device is equipped with top-class thermal imaging sensors that feature enhanced thermal sensitivity and optimized fast aperture germanium optics F/1.0. The riflescope’s high definition AMOLED screen displays an ultra-clear image, and it is designed to operate flawlessly in sub-zero conditions.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(2, 'none', 'One of the main selling points of the Thermion 2 XQ50 is its versatility and comfort of use. The riflescope is equipped with multiple ballistic features that make it suitable for use in a wide range of hunting scenarios. The device’s extended set of image settings allows it to perform well in any weather condition, and its rechargeable battery provides long-lasting performance. The onboard video and still image recording in .mp4 and .jpg formats to a robust 16gb internal storage ensures you can relive all the thermal action later. The riflescope also features customizable reticle options, making it easy to adjust the device to meet your specific needs.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(2, 'none', 'The XQ50 is designed to be user-friendly, and its digital controls make it easy to set up and customize on the fly. The riflescope’s Wi-Fi connectivity via the Stream Vision app makes using a smartphone or tablet as a second display and remote control easy. The app enables users to access advanced features, such as zeroing profiles management, multiple color palettes, picture-in-picture plus video and still-photo recording, and defective pixel repair feature.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(2, 'none', 'The Thermion 2 XQ50 is designed to withstand recoil rated up to .375 H&H, 12-Gauge, and 9.3x64, making it a durable and reliable option for professional hunters and pest control specialists. The device comes with a range of accessories, including two rechargeable batteries, a battery charger, main charger, USB cable, case, cleaning cloth, and battery cover.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(2, 'none', 'Overall, this is an impressive thermal imaging riflescope that is packed with features that make it suitable for professional hunters, pest control specialists, and personal security applications. The device’s high-quality sensors, customizable reticle options, and user-friendly design make it a standout option in the market.');
-- Page End
-- Page Start



-- Knowledge Center
-- page 1
INSERT INTO knowledge_center (page_route, title)
VALUES('how-it-work’s', 'How it Work’s');

INSERT INTO knowledge_center_sections (knowledge_center_id, image_path, text, decoration)
VALUES(1, '', 'The Knowledge Center is currently under construction. Please check back later!', 'none');

-- page 2
INSERT INTO knowledge_center (page_route, title)
VALUES('thermal-faq', 'Thermal FAQ');

INSERT INTO knowledge_center_sections (knowledge_center_id, image_path, text, decoration)
VALUES(2, '', 'The Knowledge Center is currently under construction. Please check back later!', 'none');

COMMIT TRANSACTION;