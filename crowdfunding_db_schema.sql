---Once you create a new Database in pgAdmin4, open a new 'Query Tool' in the new database.

---Run the following code to drop those tables, just in case them exists.

DROP TABLE campaign
DROP TABLE contacts
DROP TABLE category
DROP TABLE subcategory


--- create contacts table
CREATE TABLE contacts(
contact_id INTEGER PRIMARY KEY,
first_name VARCHAR(40) NOT NULL,
last_name VARCHAR(40) NOT NULL,
email VARCHAR(50) NOT NULL
);


--- create caterogy table
CREATE TABLE category(
category_id VARCHAR(4) PRIMARY KEY,
category VARCHAR(20) NOT NULL
);


--- create subcaterogy table
CREATE TABLE subcategory(
	subcategory_id VARCHAR(8) PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL);


--- create campaign table
CREATE TABLE campaign(
cf_id INTEGER PRIMARY KEY,
contact_id INTEGER NOT NULL,
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
company_name VARCHAR(50) NOT NULL,
description VARCHAR(60) NOT NULL,
goal FLOAT(10),
pledged FLOAT(10),
outcome VARCHAR(15) NOT NULL,
backers_count INTEGER,
country VARCHAR(2) NOT NULL,
currency VARCHAR(3) NOT NULL,
launched_date DATE NOT NULL,
end_date DATE NOT NULL,
category_id VARCHAR(4) NOT NULL,
FOREIGN KEY (category_id) REFERENCES category(category_id),
subcategory_id VARCHAR(8) NOT NULL,
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id));

---Once you create the tables, import the data from the CSV files; perform this step in the order that the tables were created.
---After that, run the code below to check if it works.

SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;

				
