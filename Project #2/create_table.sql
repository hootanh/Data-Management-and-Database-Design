CREATE TABLE Airport (
    Airport_code VARCHAR(255),
    Name VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    PRIMARY KEY (Airport_code)
);

CREATE TABLE FLight (
    Flight_number VARCHAR(255),
    Airline VARCHAR(255),
    Weekdays ENUM('Yes','No'),
    PRIMARY KEY (Flight_number)
);

CREATE TABLE Fare (
    Flight_number VARCHAR(255),
    Fare_code ENUM('L','Y','B','F'),
    Amount INT,
    Restrictions ENUM('Yes','No'),
    PRIMARY KEY (Flight_number)
);

CREATE TABLE Airplane_type (
    Airplane_type_name VARCHAR(255),
    Max_seats INT,
    Company VARCHAR(255),
    PRIMARY KEY (Airplane_type_name)
);

CREATE TABLE Airplane (
    Airplane_id INT,
    Total_number_of_seats INT,
    Airplane_type VARCHAR(255),
    PRIMARY KEY (Airplane_id)
);

CREATE TABLE Can_land (
    Airplane_type_name VARCHAR(255),
    Airport_code VARCHAR(255),
    PRIMARY KEY (Airplane_type_name, Airport_code),
    FOREIGN KEY (Airplane_type_name) REFERENCES Airplane_type(Airplane_type_name),
    FOREIGN KEY (Airport_code) REFERENCES Airport(Airport_code)
);

CREATE TABLE Flight_leg (
    Flight_number VARCHAR(255),
    Leg_number INT,
    Departure_airport_code VARCHAR(255),
    Scheduled_departure_time VARCHAR(255),
    Arrival_airport_code VARCHAR(255),
    Scheduled_arrival_time VARCHAR(255),
    PRIMARY KEY (Flight_number, Leg_number),
    FOREIGN KEY (Departure_airport_code) REFERENCES Airport(Airport_code),
    FOREIGN KEY (Arrival_airport_code) REFERENCES Airport(Airport_code)
);

CREATE TABLE Leg_instance (
    Flight_number VARCHAR(255),
    Leg_number INT,
    Leg_date DATE ,
    Number_of_available_seats INT,
    Airplane_id INT,
    Departure_airport_code VARCHAR(255),
    Departure_time VARCHAR(255),
    Arrival_airport_code VARCHAR(255),
    Arrival_time VARCHAR(255),
    PRIMARY KEY (Flight_number, Leg_number, Leg_date),
    FOREIGN KEY (Airplane_id) REFERENCES Airplane(Airplane_id),
    FOREIGN KEY (Departure_airport_code) REFERENCES Airport(Airport_code),
    FOREIGN KEY (Arrival_airport_code) REFERENCES Airport(Airport_code)
);

CREATE TABLE Seat_reservation (
    Flight_number VARCHAR(255),
    Leg_number INT,
    Reservation_date DATE,
    Seat_number VARCHAR(255),
    Customer_name VARCHAR(255),
    Customer_phone VARCHAR(255),
    PRIMARY KEY(Flight_number, Customer_name)
);