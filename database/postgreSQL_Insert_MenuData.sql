-- We insert all Menu Related data.
-- The tables we add to are...
	-- menu_items
	-- submenu_options
BEGIN TRANSACTION;


-- We add 3 menu buttons
INSERT INTO menu_items (name)
VALUES('Home');

INSERT INTO menu_items (name, submenu_route)
VALUES('Product Reviews', 'category');

INSERT INTO menu_items (name, submenu_route)
VALUES('Knowledge Center', 'knowledge-center');

INSERT INTO menu_items (name)
VALUES('About');


-- We add 3 submenu options for 1 of the above buttons "category"
INSERT INTO submenu_options (name, menu_item_id)
VALUES('Scope’s', 2);

INSERT INTO submenu_options (name, menu_item_id)
VALUES('Binocular’s', 2);

INSERT INTO submenu_options (name, menu_item_id)
VALUES('Monocular’s', 2);

-- Add submenu for "knowledge-center"
INSERT INTO submenu_options (name, menu_item_id)
VALUES('How it Work’s', 3);

INSERT INTO submenu_options (name, menu_item_id)
VALUES('Thermal FAQ', 3);


COMMIT TRANSACTION;