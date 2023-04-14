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

INSERT INTO menu_items (name)
VALUES('About');


-- We add 3 submenu options for 1 of the above buttons
INSERT INTO submenu_options (name, menu_item_id)
VALUES('Bikes', 2);

INSERT INTO submenu_options (name, menu_item_id)
VALUES('Scooters', 2);

INSERT INTO submenu_options (name, menu_item_id)
VALUES('Parts', 2);

COMMIT TRANSACTION;