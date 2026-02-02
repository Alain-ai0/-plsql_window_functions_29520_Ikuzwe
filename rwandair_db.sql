--------------------------------------------------------
-- RWANDAIR FLIGHT LOGISTICS - FULL DATABASE SCRIPT
--------------------------------------------------------

-- 1. CLEANUP (Optional: Drops tables if they exist to allow re-running)
DROP TABLE RA_FLIGHTS;
DROP TABLE RA_ROUTES;
DROP TABLE RA_AIRCRAFT;

-- 2. SCHEMA CREATION
CREATE TABLE RA_AIRCRAFT (
    aircraft_id INT PRIMARY KEY,
    model VARCHAR2(50),
    capacity INT
);

CREATE TABLE RA_ROUTES (
    route_id INT PRIMARY KEY,
    origin VARCHAR2(50),
    destination VARCHAR2(50),
    base_price NUMBER(10, 2)
);

CREATE TABLE RA_FLIGHTS (
    flight_id INT PRIMARY KEY,
    route_id INT,
    aircraft_id INT,
    flight_date DATE,
    passengers_booked INT,
    delay_minutes INT,
    revenue NUMBER(10, 2),
    CONSTRAINT fk_route FOREIGN KEY (route_id) REFERENCES RA_ROUTES(route_id),
    CONSTRAINT fk_aircraft FOREIGN KEY (aircraft_id) REFERENCES RA_AIRCRAFT(aircraft_id)
);

-- 3. DATA INSERTION
INSERT ALL 
INTO RA_AIRCRAFT VALUES (101, 'Airbus A330', 250)
INTO RA_AIRCRAFT VALUES (102, 'Boeing 737-800', 160)
INTO RA_AIRCRAFT VALUES (103, 'Bombardier CRJ900', 75)
SELECT * FROM dual;

INSERT ALL 
INTO RA_ROUTES VALUES (1, 'Kigali', 'Nairobi', 300)
INTO RA_ROUTES VALUES (2, 'Kigali', 'Dubai', 700)
INTO RA_ROUTES VALUES (3, 'Kigali', 'Johannesburg', 500)
INTO RA_ROUTES VALUES (4, 'Kigali', 'London', 900)
INTO RA_ROUTES VALUES (5, 'Kigali', 'Bujumbura', 200) 
SELECT * FROM dual;

INSERT ALL 
INTO RA_FLIGHTS VALUES (1001, 1, 102, TO_DATE('2025-01-10', 'YYYY-MM-DD'), 150, 10, 45000)
INTO RA_FLIGHTS VALUES (1002, 1, 102, TO_DATE('2025-02-15', 'YYYY-MM-DD'), 140, 5, 42000)
INTO RA_FLIGHTS VALUES (1003, 2, 101, TO_DATE('2025-01-20', 'YYYY-MM-DD'), 240, 45, 168000)
INTO RA_FLIGHTS VALUES (1004, 2, 101, TO_DATE('2025-02-22', 'YYYY-MM-DD'), 210, 0, 147000)
INTO RA_FLIGHTS VALUES (1005, 3, 102, TO_DATE('2025-01-25', 'YYYY-MM-DD'), 130, 20, 65000)
INTO RA_FLIGHTS VALUES (1006, 5, 103, TO_DATE('2025-01-05', 'YYYY-MM-DD'), 60, 5, 12000)
SELECT * FROM dual;

COMMIT;

-- 4. VERIFICATION
SELECT 'Database Setup Complete' as Status FROM dual;
