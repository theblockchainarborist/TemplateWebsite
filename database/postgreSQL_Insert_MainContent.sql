-- We add our page content
-- Tables we add to are...
	-- page_content
	-- page_sections
BEGIN TRANSACTION;

-- Insert About Page Data (first page content then page sections)
INSERT INTO page_content (route, title)
VALUES('about', 'About Us');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'Welcome to the eebiker, your go-to source for all things e-biking. Here, you’ll find the latest news and information on e-bikes, as well as helpful tips and advice for e-bike riders of all levels.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'Whether you’re a seasoned e-bike rider or new to the world of e-biking, you’ll find something here to interest you. We cover a wide range of topics, from the latest e-bike models and accessories, to e-bike maintenance and repair, to the health and environmental benefits of e-biking.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'Our team of e-bike experts is passionate about e-biking, and we love sharing our knowledge and experience with our readers. We strive to provide accurate and up-to-date information, as well as engaging and informative content that will help you get the most out of your e-bike.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'none', 'Thank you for visiting the eebiker. We hope that you’ll find our blog helpful and informative, and we look forward to sharing our love of e-biking with you.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'font-style: italic;', 'Please note that the content of this blog is for informational purposes only. Any product claims, statistics, quotes or other representations about a product or service should be verified with the manufacturer, provider or party in question.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'font-style: italic;', 'This blog may contain links to external websites that are affiliate links, meaning we may receive a commission if you click on a link and purchase a product or service. However, this does not affect our opinions and recommendations, as we only promote products or services that we believe are of high quality and benefit to our readers.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'font-style: italic;', 'We are not responsible for the content or reliability of any external websites linked to on this blog, and we do not endorse any products, services, or opinions expressed on these external sites. You should always exercise caution and do your own research before making any purchases or decisions based on the information provided on this blog.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(1, 'font-style: italic;', 'This blog and its owners will not be held liable for any losses, injuries, or damages from the display or use of this information. All content is provided on an as-is basis.');

-------------------------------------------------------

-- Insert Page Contents (first page content then page sections)
-- Page Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title)
VALUES('fiido-d11', 'bikes', 'https://shareasale.com/r.cfm?b=1692582&u=3527935&m=105163&urllink=&afftrack=', 'View Price', 'Fiido D11: A Unique, Folding eBike That Overcomes Caveats');

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(2, '\\sectionImage1.jpg', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(2, 'none', 'Electric bikes are an increasingly popular option for commuters who want to get around town quickly and efficiently, without the hassle of sitting in traffic or dealing with public transportation. And for those who need a bike that can easily be stored in a small apartment or taken on the subway, a folding bike is often the best choice. However, folding bikes can come with their own set of challenges, such as a small battery or a high price tag. That’s where the Fiido D11 comes in, offering a solution to many of these problems while maintaining a reasonable price point.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(2, 'none', 'As a commuter who relies on my bike to get me to work and back home again, I was intrigued by the D11’s design. Unlike most folding e-bikes, which have bulky frames or small batteries, the D11 manages to pack a lot of features into a relatively lightweight package. The standout feature is the seatpost-mounted battery, which allows for a larger battery capacity than most folding e-bikes in this price range. With a 418Wh battery, the D11 has a claimed range of up to 100 km (62 mi), although real-world range is likely to be closer to 35-50 miles depending on your assist level. This is more than enough for most commuters, especially those who have access to charging stations at work or along their route.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(2, 'none', 'In addition to the large battery, the D11 also features a 250W rear hub motor and a 7-gear drivetrain, making it easy to tackle hills and maintain a good pace on flat terrain. While the motor isn’t as powerful as some other e-bikes on the market, it’s more than sufficient for commuting purposes and helps to reduce the amount of sweat you’ll generate on your way to work.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(2, 'none', 'One of the things I appreciate about the D11 is its ease of use. The bike comes with a cadence sensor, which means the assist will kick in after a half-turn of the pedals, and there’s also a throttle option for when you need a boost from a dead stop. The bike also has mechanical disc brakes, which are reliable and easy to maintain, and a set of fenders to keep you dry on wet roads. The headlight and taillight are both wired to the power system, which means you don’t have to worry about replacing batteries, and the horn is loud enough to get the attention of other commuters.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(2, 'none', 'Of course, no bike is perfect, and the D11 does have a few limitations. The chunky seatpost design means you can’t use a suspension seatpost or seatpost-mounted accessories like cargo trailers or racks. The included fenders can be finicky to install, and the grips are not very comfortable. Additionally, the lack of closed loops on the frame can make locking up feel less secure, although there are ways to mitigate this with a good lock and anti-theft system.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(2, 'none', 'Overall, I think the Fiido D11 is an excellent choice for commuters who want a folding e-bike that is easy to use, has a decent range, and won’t break the bank. The unique design may not be for everyone, but it certainly stands out in a sea of more traditional folding e-bikes.');
-- Page End
-- Page Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title)
VALUES('fiido-kidz-k1', 'bikes', 'https://shareasale.com/r.cfm?b=1692582&u=3527935&m=105163&urllink=&afftrack=', 'View Price', 'Introducing the Fiido Kidz K1: The Perfect E-Bike for Your Little Ones!');

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(3, '\\sectionImage2.png', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'Are you looking for a safe and fun way to get your kids outside and active? Then you’ll be excited to hear about the newest addition to the Fiido line of e-bikes – the Kidz K1. This bike is specifically designed for kids ages 3 to 8 and offers a range of features that make it the perfect choice for parents looking to encourage their kids to embrace a healthier lifestyle.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'The Kidz K1 comes with a range of parental controls that allow you to monitor and adjust the throttle, ensuring that your little ones are always riding safely. With a compact and lightweight design, this bike is easy for kids to handle, and it offers a stable ride that’s perfect for their developing skills.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'Additionally, the Kidz K1 comes with a range of safety features such as a chain guard, a bell, and reflectors, making it easy for you to keep an eye on your kids and ensuring that they’re visible to other road users.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'We know that as a parent, you want to give your kids the best possible start in life, and the Kidz K1 is the perfect way to do just that. Whether they’re just learning to ride, or they’re already confident on two wheels, this bike is the perfect choice.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(3, 'none', 'Stay tuned for more details on the Kidz K1, which is due to be released in March. In the meantime, be sure to keep an eye on our website for updates and more information on this exciting new product!');
-- Page End
-- Page Start
INSERT INTO page_content (route, category, affiliate_link, link_text, title)
VALUES('vela-2', 'scooters', 'https://shareasale.com/r.cfm?b=2076647&u=3527935&m=127406&urllink=&afftrack=', 'View Price', 'Vela 2: A Convenient and Safe Option for Seniors');

INSERT INTO page_sections (page_content_id, image_path, decoration)
VALUES(4, '\\sectionImage3.png', 'none');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'As the population ages, many seniors are looking for convenient and safe ways to stay active and mobile. Electric bicycles, or e-bikes, have become a popular choice for seniors who want to continue cycling but need a little extra assistance. One such option is the Vela 2 e-bike.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'The Vela 2 is designed with seniors in mind and is built with a sturdy chromoly steel frame with a matte finish electrostatic powder coating. The weight of the bike ranges from 42-51 pounds, making it easy to handle and maneuver. The small frame version has 26-inch wheels and the large frame version has 29-inch wheels, both with double wall alloy rims and anti-puncture 50mm wide tires. The bike also features automatic integrated LED lights, v-brakes with electronic braking, and ergonomic synthetic leather locking grips for added safety.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'The Vela 2 has a single speed ratio of 46 Teeth x 18 Teeth and a lithium battery with a capacity of 378Wh and a rated voltage of 36V. The battery provides a range of up to 40 miles on Eco mode and 20 miles on Boost mode, and can be fully charged in under 3 hours with the 126W charger. The bike also includes Bluetooth 4.2, WiFi, GPS, and GSM connectivity for added safety features such as tamper detection, electromagnetic lock, app notifications, and GPS anti-theft. The Vela 2 app, available for iOS and Android, allows for bike configuration, map navigation, riding modes, and performance updates.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'The Vela 2 is available in two sizes, small with 26-inch wheels for riders between 5’1″ to 6’0″ and large with 29-inch wheels for riders between 5’7″ to 6’5″. The saddle and seat post have minimal height adjustment and are ergonomically designed with synthetic leather and chrome springs. The Vela 2 is also backed by a 3-year frame warranty, a 2-year battery warranty, and a 1-year warranty for all other components.');

INSERT INTO page_sections (page_content_id, decoration, text)
VALUES(4, 'none', 'In conclusion, the Vela 2 e-bike is a convenient and safe option for seniors who want to continue cycling but need a little extra assistance. With its sturdy frame, anti-puncture tires, automatic LED lights, and various safety features, seniors can enjoy the outdoors and stay active without worrying about the weight or safety of the bike.');
-- Page End


COMMIT TRANSACTION;