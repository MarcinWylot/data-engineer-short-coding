CREATE TABLE contacts (
	contact_id integer PRIMARY KEY,
	first_name text NOT NULL,
	last_name text NOT NULL,
	email text NOT NULL UNIQUE,
	phone text NOT NULL UNIQUE
);


INSERT INTO contacts VALUES(1, 'Tom', 'Tom', 'TomEmail', 'TomPhone');
INSERT INTO contacts VALUES(2, 'Jerry', 'Jerry', 'JerryEmail', 'JerryPhone');
INSERT INTO contacts VALUES(3, 'Tom2', 'Tom2', 'Tom2Email', 'Tom2Phone');
INSERT INTO contacts VALUES(4, 'Jerry2', 'Jerry2', 'Jerry2Email', 'Jerry2Phone');


CREATE TABLE groups (
	group_id integer PRIMARY KEY,
	name text NOT NULL
);


INSERT INTO groups VALUES(1, 'TomGroup');
INSERT INTO groups VALUES(2, 'JerryGroup');




CREATE TABLE contact_groups (
	contact_id integer,
	group_id integer,
	PRIMARY KEY (contact_id, group_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id) 
			ON DELETE CASCADE ON UPDATE NO ACTION,
	FOREIGN KEY (group_id) REFERENCES groups (group_id) 
			ON DELETE CASCADE ON UPDATE NO ACTION
);


INSERT INTO contact_groups VALUES(1, 1);
INSERT INTO contact_groups VALUES(2, 2);
INSERT INTO contact_groups VALUES(3, 1);
INSERT INTO contact_groups VALUES(4, 2);
--INSERT INTO contact_groups VALUES(5, 3);


