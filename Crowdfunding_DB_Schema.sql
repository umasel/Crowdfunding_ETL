--TABLE SCHEMATA

CREATE TABLE category (
    category_id CHAR(4) PRIMARY KEY,
    category_name VARCHAR(20) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id CHAR(8) PRIMARY KEY,
    subcategory_name VARCHAR(20) NOT NULL
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL, 
    company_name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal VARCHAR(255) NOT NULL,
    pledged VARCHAR(255) NOT NULL,
    outcome VARCHAR(15) NOT NULL,
    backers_count VARCHAR(255) NOT NULL,
    country VARCHAR(3) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launched_date VARCHAR(20) NOT NULL,
    end_date VARCHAR(20) NOT NULL,
    category_id VARCHAR(4) NOT NULL,
    subcategory_id VARCHAR(8) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
    
);