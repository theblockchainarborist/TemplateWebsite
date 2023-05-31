-- We add our page content
-- Tables we add to are...
	-- page_content
	-- page_sections
BEGIN TRANSACTION;

-- Insert About Page Data (first page content then page sections)
INSERT INTO page_content (route, title)
VALUES('about', 'About Us');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'Welcome to The Thermal Reviewer, your ultimate destination for comprehensive thermal imaging reviews. As an Amazon affiliate website, we strive to provide you with a convenient and reliable platform to explore and choose the best thermal scopes, binoculars, and monoculars available on the market.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'Our team of experts is composed of individuals with vast knowledge and experience in the field of thermal imaging technology. We are committed to delivering accurate, unbiased, and up-to-date information to assist you in making informed purchasing decisions. Our reviews are meticulously crafted through extensive research, hands-on testing, and analysis of customer feedback. This ensures that you have access to reliable insights when selecting your next thermal imaging device.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'At The Thermal Reviewer, you’ll find detailed reviews of the leading thermal scopes, binoculars, and monoculars. We delve into their features, specifications, pros and cons, and much more. Additionally, we provide helpful guides and tutorials to help you optimize the use of your thermal imaging device and enhance your outdoor adventures.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'We firmly believe that everyone should have access to the finest information regarding thermal imaging. This belief inspired us to create The Thermal Reviewer. Whether you’re a seasoned professional or a beginner, our website serves as an invaluable resource for anyone seeking the best thermal imaging device to suit their specific needs.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'Embrace the world of thermal imaging like never before by exploring our website today. Join us on this exciting journey and make the most out of your thermal imaging experience.');


-------------------------------------------------------

-- Insert Page Contents (first page content then page sections)
-- Page Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title, view_count)
VALUES('pulsar-thermion-2-xq50', 'scopes', 'https://www.amazon.com/Pulsar-Thermion-XQ50-Thermal-Riflescope/dp/B0934RXGM2?crid=4X0SB17DF082&keywords=Pulsar%2BThermion%2B2%2BXQ50&qid=1684259903&sprefix=pulsar%2Bthermion%2B2%2Bxq50%2Caps%2C92&sr=8-4&th=1&linkCode=ll1&tag=thermalrevi0d-20&linkId=b6e0bba90353b37836b887bf48def93b&language=en_US&ref_=as_li_ss_tl', 'View Price on Amazon', 'Pulsar Thermion 2 XQ50', 0);

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
-- Page 3 Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title, view_count)
VALUES('pulsar-axion-xm30f', 'monoculars', 'https://www.amazon.com/Pulsar-Axion-XM30F-Thermal-Monocular/dp/B09SVTFW4T?crid=13GSHFNDV758X&keywords=pulsar+thermal&qid=1684345326&sprefix=pulsar+thermal%2Caps%2C93&sr=8-2-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFWTjdTWlpRSjdHMU4mZW5jcnlwdGVkSWQ9QTAxMDk5MzQzSlNXUzNWM09XNjBGJmVuY3J5cHRlZEFkSWQ9QTA4NzU0MTQyOUcxOFdZWEVSNUJKJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ%3D%3D&linkCode=ll1&tag=thermalrevi0d-20&linkId=ff17417add23de313215101b539f02c6&language=en_US&ref_=as_li_ss_tl', 'View Price on Amazon', 'Pulsar Axion XM30F', 0);

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(3, '\\sectionImage2.jpg', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'The Pulsar Axion XM30F Thermal Monocular is a compact and powerful thermal imaging device designed for hunting and outdoor applications. With its impressive features and capabilities, it offers a range of benefits to users.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'One of the standout features of the Axion XM30F is its frost-resistant AMOLED display, which provides excellent image quality even in unfavorable conditions. The display offers a high contrast and clear view, allowing users to spot targets with ease. Additionally, the monocular boasts a detection range of over 1400 yards, ensuring that users can identify targets from a significant distance.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'In terms of power consumption, the Axion XM30F excels with its low energy usage. It offers a battery life of 5+ hours on a single charge, allowing users to have extended usage without worrying about running out of power. This is particularly useful for outdoor activities such as hunting, where long hours may be spent in the field.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'The compact and lightweight design of the Axion XM30F is another notable feature. Weighing just 8.8 ounces and featuring pocket-sized dimensions, it is highly portable and can be easily carried in one hand or a standard-sized pocket. This makes it convenient for scouting and spotting purposes, as well as for users who prefer a lightweight and ergonomic thermal imaging device.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'The Axion XM30F also offers advanced connectivity options through its Stream Vision 2 app. By integrating WiFi capabilities, users can connect the monocular to iOS and Android devices, transforming them into a second display or remote control. This enables easy sharing of recorded files, adjustment of settings, and firmware upgrades. The app enhances the functionality and versatility of the device, providing a seamless user experience.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'It is important to note that the Pulsar Axion XM30F is subject to export control regulations, and compliance with the Export Administration Regulations (EAR) is required. Users should ensure they understand and adhere to these regulations to avoid any legal complications.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'In conclusion, the Pulsar Axion XM30F Thermal Monocular is a high-quality and feature-packed device suitable for hunting and outdoor enthusiasts. With its impressive detection range, low power consumption, compact design, and WiFi integration, it offers excellent performance and versatility. Whether you’re a professional hunter or an outdoor enthusiast, the Axion XM30F is a reliable and powerful tool that can enhance your overall experience and provide you with a clear advantage in the field.');
-- Page End
-- Page 4 Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title, view_count)
VALUES('pulsar-axion-2-lrf', 'monoculars', 'https://www.amazon.com/Pulsar-Axion-XG35-Thermal-Monocular/dp/B09SBST451?crid=13GSHFNDV758X&keywords=pulsar%2Bthermal&qid=1684346293&sprefix=pulsar%2Bthermal%2Caps%2C93&sr=8-4-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExRzBaSVFHNkxHWUcxJmVuY3J5cHRlZElkPUEwNjQ2MDU3M1Q3MlZONE5KMkxLMSZlbmNyeXB0ZWRBZElkPUEwODc1MzU3MU1GTU82T1hQVk5FTSZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU&th=1&linkCode=ll1&tag=thermalrevi0d-20&linkId=148e22440264926ab0e9334c3ec35818&language=en_US&ref_=as_li_ss_tl', 'View Price on Amazon', 'Pulsar Axion 2 LRF', 0);

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(4, '\\sectionImage3.jpg', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'The Pulsar Axion 2 LRF Thermal Monocular is an upgraded version of its predecessor, offering several significant improvements and features that enhance its performance and functionality.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'One of the key enhancements of the Axion 2 LRF is its thermal imaging sensor. With a 384x288 resolution and 17um pixel pitch core, it provides higher image quality and better detection of heat signatures compared to the previous model. This enables users to spot targets over 1400 yards away, making it an excellent device for scoping large areas and locating prey. Additionally, the inclusion of a 1100-yard laser rangefinder gives users an accurate approximation of their target’s distance, further aiding in target acquisition.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'The Axion 2 LRF features a 640x400 AMOLED display, delivering a clear and crisp image of the target. The upgraded display resolution enhances the viewing experience, allowing users to see finer details with greater clarity. The device also offers variable magnification from 2x to 8x, providing users with flexibility in observing and identifying objects in the field.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'Built-in photo and video recording capabilities are another notable feature of the Axion 2 LRF. Users can capture their hunting experiences and precious shooting memories with ease. The monocular comes with a 16GB memory card, offering ample storage for hours of recorded video and numerous photos. The Wi-Fi connectivity and compatibility with the Stream Vision 2 app further enhance the recording and sharing capabilities of the device. Users can connect it to their smartphones or tablets, using them as a second display or remote control. They can also transfer recorded files, adjust settings, and upgrade firmware seamlessly through the app.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'The rugged magnesium alloy housing of the Axion 2 LRF ensures durability and protection in various conditions. It is IPX7 waterproof rated and operates reliably in temperatures ranging from -13F to 122F, making it suitable for outdoor use in different climates.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'In terms of battery life, the Axion 2 LRF impresses with its Pulsar APS5 Li-ion battery, offering up to 11 hours of operation. This extended battery life allows users to engage in longer hunting sessions without worrying about running out of power.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'While the Axion 2 LRF offers several notable enhancements over the previous model, it is important to note that it is subject to export control regulations, and compliance with the Export Administration Regulations (EAR) is required.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'In conclusion, the Pulsar Axion 2 LRF Thermal Monocular is an impressive and technologically advanced device that surpasses its predecessor in terms of thermal imaging performance, display quality, and recording capabilities. With its upgraded sensor, extended detection range, high-resolution display, and convenient features such as built-in recording and Wi-Fi connectivity, it offers hunters and outdoor enthusiasts a versatile and powerful tool for their adventures.');
-- Page End
-- Page 5 Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title, view_count)
VALUES('pulsar-merger-lrf-xp50', 'binoculars', 'https://www.amazon.com/Pulsar-Thermal-Imaging-Binoculars-Merger/dp/B0B7CG8VVQ?crid=13GSHFNDV758X&keywords=pulsar+thermal&qid=1684346293&sprefix=pulsar+thermal%2Caps%2C93&sr=8-17&linkCode=ll1&tag=thermalrevi0d-20&linkId=0cdcca056a7e4eb9b0854c28664281cf&language=en_US&ref_=as_li_ss_tl', 'View Price on Amazon', 'Pulsar Merger LRF XP50', 0);

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(5, '\\sectionImage4.jpg', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'The Pulsar Thermal Imaging Binoculars Merger LRF XP50 is a high-performance device that offers exceptional thermal imaging capabilities and advanced features for prolonged observation. With its dual eyepiece design and powerful sensor, this binocular surpasses expectations in delivering detailed and crisp images, making it an ideal companion for long periods of use.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'One of the standout features of the Merger LRF XP50 is its dual eyepiece layout, which significantly reduces eye fatigue during extended periods of observation. By utilizing two independent eyepieces, this binocular provides a more natural and detailed appearance of observed objects, even under low temperature contrast conditions. This design ensures a comfortable viewing experience, allowing users to enjoy the view for longer periods without feeling fatigued. Additionally, the adjustable distance between the eyepieces ensures a customized fit for individual users, eliminating the potential for double-vision images.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'Equipped with a high-definition thermal imaging sensor with a resolution of 640x480 pixels and a NETD sensitivity of less than 25 mK, the Merger LRF XP50 delivers exceptional image quality and sensitivity. It captures even the smallest temperature differences, making it highly effective in low contrast environments, as well as during rain or fog. This high sensitivity sensor enables reliable identification of targets and provides clear visualization of important anatomical features of animals, along with minute details of the surrounding landscape.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'The binocular’s fast aperture F50/1.0 germanium lens further enhances its detection capabilities. With a long detection range of up to 1968 yards, this device allows users to spot objects even in complete darkness. Its ability to detect a standard 6ft tall object at such distances is impressive and ensures efficient target identification and assessment of the situation.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'To enhance usability and convenience, the Merger LRF XP50 is equipped with two independent batteries. With up to 10 hours of continuous operation on a single charge, users can rely on this binocular for extended periods in the field. The inclusion of a built-in photo and video recorder, along with 16 GB of free cloud space, allows users to capture and preserve their observations easily. The device also supports firmware updates and distant operation through iOS and Android devices via the Stream Vision 2 App.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'The binocular’s precise laser rangefinder is a valuable addition, enabling users to accurately estimate target distances. With a range of up to 1093 yards and an accuracy of ± 1 meter, this feature facilitates quick and error-free decision-making in various scenarios.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'The Merger LRF XP50 offers eight color palettes, allowing users to choose the most suitable one for different viewing conditions. From the versatile "White Hot" mode to specialized options like "Hot Black" for wildlife detection at night and "Rainbow" for enhancing temperature differences, these palettes enhance target identification and visibility.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'Wi-Fi integration with iOS and Android devices through the Stream Vision 2 App enables seamless connectivity and functionality. Users can use their smartphones or tablets as a second display or remote control, facilitating file transfers, settings adjustments, and firmware upgrades.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'Designed with durability in mind, the Merger LRF XP50 is IPX7 waterproof-rated, offering protection against heavy rainfall, snow, or other precipitation. It can withstand submersion in up to 1 meter of water for up to 30 minutes, ensuring reliable performance in challenging weather conditions.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'In conclusion, the Pulsar Thermal Imaging Binoculars Merger LRF XP50 is an exceptional device that combines advanced thermal imaging capabilities, extended battery life, and a dual eyepiece design to deliver outstanding performance for prolonged observation. With its highly sensitive sensor, precise laser rangefinder, customizable eyepiece distance, and convenient features such as built-in recording and Wi-Fi integration, the Merger LRF XP50 offers a comprehensive and dependable solution for various observation purposes and conditions.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'The binocular’s construction is both classic and compact, providing a comfortable viewing experience and easy portability. Its robust design ensures durability and reliability, making it suitable for use in demanding environments. Whether you’re an outdoor enthusiast, a wildlife observer, or a security professional, the Merger LRF XP50 is a dependable companion that won’t disappoint you.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'With its exceptional image quality, long detection range, and precise distance measurement, this thermal imaging binocular enables users to make accurate assessments and informed decisions in a wide range of scenarios. Whether you’re conducting surveillance, search and rescue operations, or simply enjoying nature, the Merger LRF XP50 empowers you with the necessary tools to achieve optimal results.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'The inclusion of two independent batteries with up to 10 hours of continuous work ensures that you won’t be left without power when you need it most. The replaceable battery design allows for quick and easy battery replacement, even in complete darkness, thanks to the embossed markings on the body.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'Furthermore, the availability of 16 GB of free cloud space and the built-in photo and video recorder enable you to capture and document your observations effortlessly. The ability to record and share your experiences with colleagues, friends, and family adds another dimension to your outdoor activities.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'The Stream Vision 2 App integration via Wi-Fi connectivity expands the functionality of the Merger LRF XP50, enabling remote control and the transfer of recorded files. Additionally, firmware updates can be easily performed through the app, ensuring that your binocular remains up to date with the latest features and improvements.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'The Merger LRF XP50 offers a selection of eight color palettes, allowing you to optimize the viewing experience in different conditions. Whether you prefer the versatility of the "White Hot" mode or the enhanced temperature differences provided by options like "Rainbow" or "Ultramarine," the variety of palettes ensures that you can tailor the display to suit your specific needs.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'Lastly, the IPX7 waterproof rating provides peace of mind, allowing you to confidently use the binocular in various weather conditions without worrying about water damage.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(5, 'none', 'In summary, the Pulsar Thermal Imaging Binoculars Merger LRF XP50 is a remarkable device that excels in thermal imaging capabilities, ergonomic design, and advanced features. Its dual eyepiece layout reduces eye fatigue and enhances the natural appearance of observed objects. With its high-definition sensor, precise rangefinder, long detection range, and extended battery life, this binocular is a reliable and versatile tool for professionals and enthusiasts alike. Whether you’re engaged in outdoor activities, wildlife observation, or security operations, the Merger LRF XP50 delivers exceptional performance and ensures an enjoyable and efficient viewing experience.');
-- Page End
-- Page 6 Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title, view_count)
VALUES('agm-rattler-ts25-384', 'scopes', 'https://www.amazon.com/AGM-Rattler-TS25-384-Compact-Thermal/dp/B08TCL5RSP?crid=27I0GF8PR161Y&keywords=Thermal%2Bscope&qid=1684419207&sbo=RZvfv%2F%2FHxDF%2BO5021pAnSA%3D%3D&sprefix=thermal%2Bscope%2Caps%2C89&sr=8-10&th=1&linkCode=ll1&tag=thermalrevi0d-20&linkId=dde493d930edc528f705f3458cc4ed2b&language=en_US&ref_=as_li_ss_tl', 'View Price on Amazon', 'AGM Rattler TS25-384', 0);

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(6, '\\sectionImage5.jpg', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(6, 'none', 'The AGM Rattler TS25-384 is a remarkable thermal scope that exceeds expectations with its impressive features and performance. Designed for use in various challenging environments, this scope offers a high-sensitivity thermal detector with a resolution of 384x288, ensuring clear and detailed images regardless of lighting or weather conditions. Whether you’re on a mission or an adventurous expedition, the Rattler TS25-384 proves to be a reliable and versatile companion.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(6, 'none', 'One of the standout features of the AGM Rattler TS25-384 is its 1024x768 OLED display, which provides a crisp and vibrant viewing experience. The adjustable color palettes further enhance situational awareness and enable customization to match individual preferences. The scope’s 8x digital zoom capability allows you to focus in on targets with greater detail, ensuring accuracy and precision in your observations.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(6, 'none', 'Durability is another aspect where the Rattler TS25-384 excels. It boasts waterproof and shockproof construction, ensuring that it can withstand the rigors of outdoor use. This makes it a reliable choice even in challenging conditions.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(6, 'none', 'The AGM Rattler TS25-384 also offers additional features that enhance its usability. The built-in video recording and image capture capabilities allow for easy documentation of your experiences and findings. With the onboard Wi-Fi module, you can share real-time thermal video and images with others, adding a social aspect to your adventures. The inclusion of distance measurement functionality takes your hunting or shooting game to the next level, enabling quick and accurate distance calculations.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(6, 'none', 'When it comes to battery life, the Rattler TS25-384 doesn’t disappoint. It can operate continuously for up to 4.5 hours using two CR123 batteries. Additionally, it supports external power banks via the USB-C connector, allowing for extended usage time during long excursions.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(6, 'none', 'In terms of performance, the AGM Rattler TS25-384 offers a refresh rate of 50Hz, resulting in smooth image quality that minimizes lag and provides a seamless viewing experience. The 25mm lens with an F/1.0 aperture ensures a wide field of view, enhancing your situational awareness and capturing more details in your surroundings.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(6, 'none', 'As for the maximum target distance, the AGM Rattler TS25-384 provides a detection range of 800 meters, enabling you to spot targets from a significant distance.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(6, 'none', 'Overall, the AGM Rattler TS25-384 is an exceptional thermal scope that delivers outstanding performance and versatility. Its high-resolution imaging, robust construction, and additional features such as video recording, distance measurement, and Wi-Fi transmission make it a top choice for professionals and enthusiasts alike. Whether you’re on a mission or embarking on an outdoor adventure, the Rattler TS25-384 proves to be a reliable and powerful tool that enhances your situational awareness and accuracy.');
-- Page End
-- Page 7 Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title, view_count)
VALUES('atn-thor-lt', 'scopes', 'https://www.amazon.com/ATN-Thermal-Battery-Ultra-Low-Consumption/dp/B07NDV69SG?crid=27I0GF8PR161Y&keywords=Thermal%2Bscope&qid=1684422681&sprefix=thermal%2Bscope%2Caps%2C89&sr=8-31&th=1&linkCode=ll1&tag=thermalrevi0d-20&linkId=7fbb4b1391e16ac9a3a9f03a7c789cc5&language=en_US&ref_=as_li_ss_tl', 'View Price on Amazon', 'ATN Thor LT', 0);

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(7, '\\sectionImage6.jpg', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(7, 'none', 'The ATN Thor LT Thermal Rifle Scope is a remarkable piece of technology that provides enhanced visibility in various challenging conditions. Designed to simplify the thermal imaging experience and offer maximum performance, this scope boasts advanced heat detection sensors that enable users to see in total darkness, dense fog, smoke, and heavy vegetation.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(7, 'none', 'One of the standout features of the ATN Thor LT Thermal Rifle Scope is its lightweight construction. Weighing less than an average scope, it enhances the user’s agility and helps maintain a balanced feel when using a rifle. This lightweight design is particularly beneficial for those engaging in extended hunting sessions or navigating through challenging terrains.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(7, 'none', 'The scope’s low power consumption is another significant advantage. While batteries often present a challenge for thermal scopes, the ThOR LT excels in this regard. It provides an impressive battery run time of 10+ hours of continuous use, ensuring extended operation without the need for frequent recharging or battery replacements.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(7, 'none', 'The ease of mounting the ATN Thor LT Thermal Rifle Scope is worth mentioning. With perfectly fitting 30mm rings that retain zero while transferring between rifles, attaching and detaching the scope is a breeze. This convenient feature allows users to swap scopes effortlessly, adding versatility to their hunting equipment.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(7, 'none', 'Sighting in the scope is a hassle-free process, thanks to the one-shot zero function. By simply moving the zero reticle to the first point of impact, users can quickly calibrate their scope and achieve accurate targeting. This efficient zeroing feature saves time and effort, making it ideal for shooters who value simplicity.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(7, 'none', 'In terms of image quality, the ATN Thor LT impresses with its sensor options. It offers two sensor variants: 160 x 120 px/17 µm 60 Hz and 320 x 240 px/12 μm 60 Hz. These sensors deliver sharp and clear images, allowing users to detect animal body heat through crops, fog, or any low-visibility situations without relying on visible light.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(7, 'none', 'The ATN Thor LT Thermal Rifle Scope also includes a 1280x720 HD micro display, which further enhances the visual experience. The high-definition display ensures a crisp and detailed image, providing users with a comprehensive view of their surroundings.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(7, 'none', 'The scope’s weather-resistant design with an IP rating ensures durability and protection against the elements. It can withstand varying weather conditions, allowing users to confidently use it in outdoor environments without worrying about damage.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(7, 'none', 'The ATN Thor LT Thermal Rifle Scope offers different color modes, including White Hot and Black Hot, providing flexibility in selecting the optimal visual representation for specific situations. Additionally, the scope features multiple reticle patterns, allowing users to customize their aiming point according to their preferences and shooting requirements.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(7, 'none', 'Although it’s important to note that the 30mm standard rings for mounting the scope are not included, the overall performance and features of the ATN Thor LT Thermal Rifle Scope outweigh this minor drawback.

');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(7, 'none', 'In conclusion, the ATN Thor LT Thermal Rifle Scope stands out as an exceptional product in the thermal imaging scope market. Its advanced heat detection sensors, lightweight design, impressive battery life, and user-friendly features make it a top choice for hunters and outdoor enthusiasts. Whether you’re navigating in low-light conditions, dense fog, or challenging terrains, the ATN Thor LT delivers reliable visibility and outstanding performance.');
-- Page End
-- Page 8 Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title, view_count)
VALUES('atn-binox-4t', 'binoculars', 'https://www.amazon.com/American-Technology-Network-Corp-Binocular/dp/B07NH6958Z?crid=1XN73UIKRH9EJ&keywords=thermal+binoculars&qid=1684423788&sbo=RZvfv%2F%2FHxDF%2BO5021pAnSA%3D%3D&sprefix=Thermal+bin%2Caps%2C89&sr=8-8&linkCode=ll1&tag=thermalrevi0d-20&linkId=cf048f7fc32e2a8557f2944a095236ac&language=en_US&ref_=as_li_ss_tl', 'View Price on Amazon', 'ATN BinoX 4T', 0);

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(8, '\\sectionImage7.jpg', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(8, 'none', 'The ATN BinoX 4T Thermal Smart HD Binoculars are an impressive piece of equipment that offers a range of features designed to enhance your outdoor adventures. These state-of-the-art binoculars are well ahead of market trends, making them the perfect choice for hunters, hikers, and outdoor enthusiasts.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(8, 'none', 'One of the standout features of the BinoX 4T is its dual-stream video capability. Equipped with a powerful Dual Core Processor, these binoculars can transmit video in HD quality via two channels simultaneously. You can record what you see on the display to a micro SD card while streaming it to any connected iOS or Android device. This functionality provides unparalleled performance without compromising on speed or quality.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(8, 'none', 'The integrated laser rangefinder is a game-changer for hunters. It helps detect and identify potential targets, while the rangefinder measures the distance accurately and quickly. This feature eliminates the need to point your rifle at the target until you’re ready to pull the trigger, enhancing safety and precision in your hunting experience.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(8, 'none', 'The BinoX 4T boasts a remarkable battery life, which is crucial for outdoor activities. The built-in battery provides an impressive 15+ hours of active use, allowing you to stay in the field longer without worrying about running out of power. Additionally, the binoculars can be conveniently charged from a power bank via a micro USB port, making them versatile and adaptable to field conditions.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(8, 'none', 'When it comes to image quality, the BinoX 4T excels. Previous generations of thermal optics often suffered from a loss of detail and blurry images. However, ATN’s innovative Dual Core Thermal Sensor has addressed this issue. The binoculars provide clear and detailed images, allowing you to play with color palettes, zoom in or out, and scan your surroundings with ease. The image adjusts to your natural eyesight, providing a comfortable and immersive viewing experience.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(8, 'none', 'Ergonomically designed for comfort, the BinoX 4T is a classic tool for spotting and recovery efforts. Whether you’re engaged in search and rescue missions, scanning terrains, or recovering game, these binoculars deliver exceptional thermal imaging results. The inclusion of an IR spotter is a welcome addition, allowing you to spot hogs or coyotes that may be hidden behind tree lines, even when using night vision devices. This feature improves the speed and accuracy of your hunting party.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(8, 'none', 'In conclusion, the ATN BinoX 4T Thermal Binoculars are a remarkable piece of technology that will greatly enhance your outdoor experiences. With its dual-stream video capability, smart laser rangefinder, long battery life, and excellent image quality, these binoculars offer a comprehensive and high-performing package. Whether you’re scanning the field or observing wildlife from your vehicle, the BinoX 4T provides the versatility, accuracy, and reliability you need.');
-- Page End
-- Page 9 Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title, view_count)
VALUES('flir-scout-tk', 'monoculars', 'https://www.amazon.com/FLIR-Scout-Handheld-Thermal-Imager/dp/B01APT3LF6?crid=1XN73UIKRH9EJ&keywords=thermal%2Bbinoculars&qid=1684424323&sprefix=Thermal%2Bbin%2Caps%2C89&sr=8-16&th=1&linkCode=ll1&tag=thermalrevi0d-20&linkId=05da43405d3f1055df2605e496fe1aba&language=en_US&ref_=as_li_ss_tl', 'View Price on Amazon', 'FLIR Scout TK', 0);

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(9, '\\sectionImage8.jpg', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(9, 'none', 'The FLIR Scout TK Handheld Thermal Imaging Monocular is a powerful and compact device that brings thermal imaging technology to the hands of outdoor enthusiasts and security-conscious individuals. With the ability to see heat signatures in total darkness, this monocular provides a valuable tool for exploring the outdoors at night or in low-light conditions.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(9, 'none', 'One of the standout features of the Scout TK is its pocket-sized design, making it incredibly portable and easy to carry. It is specifically designed for single-handed use, allowing for convenient operation while on the go. The simple four-button design and intuitive interface ensure that users can quickly and easily navigate through the monocular’s functions.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(9, 'none', 'The Scout TK is not only useful for outdoor enthusiasts but also serves as a great everyday tool for personal and home security at night. Whether you’re camping, hiking, or simply want to enhance your safety measures, this monocular provides valuable thermal imaging capabilities to help you identify people, objects, and animals over 100 yards away.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(9, 'none', 'In terms of functionality, the Scout TK offers still image and video recording options, allowing you to capture and document your findings or experiences. The image capture is as simple as a short press, while a long press enables video capture. This versatility adds to the device’s overall utility and enhances your ability to document and share your thermal imaging observations.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(9, 'none', 'The FLIR Scout TK package includes the handheld thermal camera itself, a neck lanyard for easy carrying, a USB cable for convenient charging and data transfer, and a lens cap to protect the lens when not in use. These accessories complement the monocular’s portability and make it a comprehensive package ready for use out of the box.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(9, 'none', 'When it comes to specifications, the Scout TK features a VOx Microbolometer detector with a resolution of 160x120 pixels. The monocular has a 640x480 LCD display, providing a clear view of the thermal images captured. With a field of view (HxV) of 20°x16° and the ability to detect a person up to 100 yards away, the Scout TK offers impressive performance in a compact form.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(9, 'none', 'Weighing only 6 ounces (170 grams) and measuring 6.0"x2"x2" in size, the Scout TK is incredibly lightweight and compact, allowing for easy and comfortable handling during outdoor activities.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(9, 'none', 'In conclusion, the FLIR Scout TK Handheld Thermal Imaging Monocular offers accessibility, portability, and reliable performance for thermal imaging needs. Its ability to see heat signatures in total darkness, pocket-sized design, user-friendly interface, and image/video capture capabilities make it an excellent companion for outdoor adventures and personal security applications. Whether you’re exploring the backcountry or ensuring your safety at home, the Scout TK provides valuable thermal imaging capabilities in a compact and user-friendly package.');
-- Page End
-- Page 10 Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title, view_count)
VALUES('flir-breach-ptq136', 'monoculars', 'https://www.amazon.com/FLIR-TAB176WN8Q14001-Thermal-Multi-Purpose-Monocular/dp/B06XGS6611?crid=2BPFOSM5OMPUR&keywords=thermal+scope&qid=1684430211&sbo=RZvfv%2F%2FHxDF%2BO5021pAnSA%3D%3D&sprefix=thermal+scope%2Caps%2C95&sr=8-26&linkCode=ll1&tag=thermalrevi0d-20&linkId=2b24d8bff60811375a4026243cf952bc&language=en_US&ref_=as_li_ss_tl', 'View Price on Amazon', 'FLIR Breach PTQ136', 0);

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(10, '\\sectionImage9.jpg', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(10, 'none', 'The FLIR Breach PTQ136 is an exceptional thermal imaging monocular designed for multiple purposes. With its advanced image processing capabilities powered by the internal FLIR Boson thermal core and a high-definition display, this device offers excellent image clarity and superior detection and classification abilities, regardless of day or night conditions.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(10, 'none', 'One of the standout features of the Breach PTQ136 is its convenient hands-free operation. The monocular comes equipped with multiple mini-rail mounting points, allowing for easy attachment to various head mounts, helmet mounts, and additional equipment. This ensures flexibility and adaptability in different operational scenarios, making it an ideal tool for law enforcement personnel.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(10, 'none', 'The FLIR Breach PTQ136 also offers superior value with its on-board video recording and image capture capabilities. With the ability to store up to 1,000 images and 2.5 hours of video on internal memory, users can easily document their operations for future reference or analysis. The device offers multiple palettes to optimize viewing in different situations, and the inclusion of a digital compass/inclinometer further enhances situational awareness.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(10, 'none', 'Weighing just 210 grams (0.46 lbs), the Breach PTQ136 is compact and lightweight, making it easy to carry and use in the field. Its durable construction ensures it can withstand the rigors of law enforcement use. The monocular’s new FLIR Boson core delivers exceptional performance, allowing users to spot heat signatures of suspects and objects in total darkness. The wide field of view (FOV) of 24° × 19° and the ability to detect humans at a distance of 205 meters further contribute to its tactical awareness.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(10, 'none', 'FLIR, known for its innovative technologies, has once again delivered a high-quality thermal imaging product with the Breach PTQ136. The company’s commitment to creating a more sustainable, efficient, and safer future is evident in this versatile and powerful device.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(10, 'none', 'Beyond law enforcement applications, the FLIR Breach PTQ136 is also an excellent tool for outdoor enthusiasts. Whether you’re hunting, hiking, or exploring nature, this thermal monocular can enhance your experience by providing clear visibility even in reduced visibility conditions. It allows you to spot wildlife, keep track of fellow hikers, and navigate off the beaten path with confidence.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(10, 'none', 'It’s important to note that due to its frame rate exceeding 9Hz, the FLIR Breach PTQ136 is subject to export regulations imposed by the U.S. Department of Commerce (DOC). Prior authorization from the DOC is required for shipment to destinations outside of the United States and Canada.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(10, 'none', 'In conclusion, the FLIR Breach PTQ136 is a feature-rich and versatile thermal imaging monocular that offers exceptional vision, hands-free operation, and superior value. Its compact size, lightweight design, and advanced capabilities make it an excellent choice for both law enforcement professionals and outdoor enthusiasts alike. With FLIR’s commitment to innovation and intelligent imaging solutions, the Breach PTQ136 provides a clear view of the world in a whole new light.');



-- Knowledge Center
-- page 1
INSERT INTO knowledge_center (page_route, title)
VALUES('how-it-works', 'How it Works');

INSERT INTO knowledge_center_sections (knowledge_center_id, image_path, text, decoration)
VALUES(1, '', 'The Knowledge Center is currently under construction. Please check back later!', 'none');

-- page 2
INSERT INTO knowledge_center (page_route, title)
VALUES('thermal-faq', 'Thermal FAQ');

INSERT INTO knowledge_center_sections (knowledge_center_id, image_path, text, decoration)
VALUES(2, '', 'The Knowledge Center is currently under construction. Please check back later!', 'none');

COMMIT TRANSACTION;