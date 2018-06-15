DROP TABLE IF EXISTS business;
DROP TABLE IF EXISTS inspection;
DROP TABLE IF EXISTS violation;

CREATE TABLE business (
    -- a list of businesses in San Francisco
    business_id TEXT, -- a business id
    name TEXT,
    address TEXT,
    city TEXT,
    postal_code TEXT,
    latitude DECIMAL,
    longitude DECIMAL,
    phone_number TEXT,
    "TaxCode" TEXT,
    business_certificate TEXT,
    application_date TEXT,
    owner_name TEXT,
    owner_address TEXT,
    owner_city TEXT,
    owner_state TEXT,
    owner_zip TEXT
);

CREATE TABLE inspection (
    business_id TEXT,
    "Score" NUMERIC,
    date TEXT NOT NULL,
    type TEXT NOT NULL,
    FOREIGN KEY(business_id) REFERENCES business(business_id)
);

CREATE TABLE violation (
    business_id TEXT,
    date TEXT,
    "ViolationTypeID" TEXT,
    risk_category TEXT,
    description TEXT,
    FOREIGN KEY(business_id, date) REFERENCES inspection(business_id, date)
);
