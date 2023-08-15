CREATE TABLE dim_cars(
carid INT PRIMARY KEY NOT NULL
    ,carmodel VARCHAR
    ,carcostprice REAL
    ,carrating REAL
    ,caravailability CHAR
)

CREATE TABLE dim_renters(
    renterid INT PRIMARY KEY NOT NULL
    ,rentername VARCHAR
    ,renteremail VARCHAR
    ,renterphone VARCHAR
)

CREATE TABLE dim_dates(
    date DATE PRIMARY KEY NOT NULL
    ,year INT NOT NULL
    ,month INT NOT NULL
    ,day INT NOT NULL
)

CREATE TABLE ft_orders(
    orderid INT PRIMARY KEY NOT NULL
    ,carid INT REFERENCES dim_cars
    ,renterid INT REFERENCES dim_renters
	,date DATE REFERENCES dim_dates
    ,returnstatus CHAR
    ,pickupdate DATE
    ,returndate DATE
    ,priceperhour REAL
    ,totalrentalhour REAL
)
