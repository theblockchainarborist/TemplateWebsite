BEGIN TRANSACTION;


DROP TABLE IF EXISTS submenu_options;
DROP TABLE IF EXISTS menu_items;
DROP TABLE IF EXISTS page_sections;
DROP TABLE IF EXISTS page_content;
DROP TABLE IF EXISTS knowledge_center;

DROP TABLE IF EXISTS site_data;

------------------
-- Create Tables
------------------

-- Menu Buttons
CREATE TABLE menu_items (
	id SERIAL,
	name varchar(75) NOT NULL,
	submenu_route varchar(50),
	CONSTRAINT PK_menu_items PRIMARY KEY (id)
);
-- Menu Button SubMenu's
CREATE TABLE submenu_options (
	id SERIAL,
	name varchar(75) NOT NULL,
	menu_item_id int,
	CONSTRAINT PK_submenu_options PRIMARY KEY (id)
);
-- Main Content
CREATE TABLE page_content (
	id SERIAL,
	route varchar(50),
	category varchar(75),
	title varchar(150),
	affiliate_link varchar(750),
	link_text varchar(125),
	CONSTRAINT PK_page_content PRIMARY KEY (id)
);
-- Page Sections
CREATE TABLE page_sections (
	id SERIAL,
	page_content_id int NOT NULL,
	image_path varchar(250),
	text varchar(2000),
	decoration varchar(400),
	CONSTRAINT PK_page_sections PRIMARY KEY (id)
);

-- Knowledge Center
CREATE TABLE knowledge_center (
	id SERIAL,
	page_route varchar(200),
	title varchar(150),
	CONSTRAINT PK_knowledge_center PRIMARY KEY (id)
);

CREATE TABLE knowledge_center_sections (
	id SERIAL,
	knowledge_center_id int NOT NULL,
	image_path varchar(250),
	text varchar(2000),
	decoration varchar(400),
	CONSTRAINT PK_knowledge_center_sections PRIMARY KEY (id)
);

---------------------------------------------------------------

-- Foreign Keys
ALTER TABLE submenu_options 
ADD CONSTRAINT FK_menu_items_submenu_options 
FOREIGN KEY(menu_item_id)
REFERENCES menu_items(id);

ALTER TABLE page_sections 
ADD CONSTRAINT FK_page_content_page_sections
FOREIGN KEY(page_content_id)
REFERENCES page_content(id);

ALTER TABLE knowledge_center_sections
ADD CONSTRAINT FK_knowledge_center_knowledge_center_sections
FOREIGN KEY(knowledge_center_id)
REFERENCES knowledge_center(id);

-----------------------------------------------------------

-- Add NOT NULL Constraints
ALTER TABLE submenu_options 
ALTER COLUMN menu_item_id
SET NOT NULL;

ALTER TABLE page_sections
ALTER COLUMN page_content_id
SET NOT NULL;

ALTER TABLE knowledge_center_sections
ALTER COLUMN knowledge_center_id
SET NOT NULL;

-------------------
COMMIT TRANSACTION;