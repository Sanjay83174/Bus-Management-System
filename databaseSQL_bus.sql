-- Create database
CREATE DATABASE IF NOT EXISTS ms;
USE ms;

-- Admin table for authentication
CREATE TABLE IF NOT EXISTS admin (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL
);

-- Schedule table for bus schedules
CREATE TABLE IF NOT EXISTS schedule (
    Boarding VARCHAR(100) NOT NULL,
    Destination VARCHAR(100) NOT NULL,
    Fare DECIMAL(10,2) NOT NULL,
    DOB DATE NOT NULL,  -- Date of Boarding/Departure
    DOA DATE NOT NULL,  -- Date of Arrival
    Code INT PRIMARY KEY,
    TotalSeats INT NOT NULL,
    VacantSeats INT NOT NULL
);

-- Tickets table for passenger bookings
CREATE TABLE IF NOT EXISTS tickets (
    Name VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Contact VARCHAR(15) NOT NULL,
    Luggage INT NOT NULL,
    TicketNumber INT PRIMARY KEY,
    Code INT NOT NULL,
    SeatNo VARCHAR(10) NOT NULL,
    FOREIGN KEY (Code) REFERENCES schedule(Code) ON DELETE CASCADE
);


-- Insert sample admin credentials
INSERT INTO admin (username, password) VALUES 
('admin', 'admin123'),
('superuser', 'password123');

-- Insert sample bus schedules
INSERT INTO schedule (Boarding, Destination, Fare, DOB, DOA, Code, TotalSeats, VacantSeats) VALUES 
('New York', 'Boston', 45.00, '2024-01-15', '2024-01-15', 1001, 40, 40),
('Chicago', 'Detroit', 35.50, '2024-01-16', '2024-01-16', 1002, 35, 35),
('Los Angeles', 'San Francisco', 55.00, '2024-01-17', '2024-01-17', 1003, 45, 45),
('Miami', 'Orlando', 25.00, '2024-01-18', '2024-01-18', 1004, 30, 30);

-- Insert sample tickets (if needed)
INSERT INTO tickets (Name, Age, Gender, Email, Contact, Luggage, TicketNumber, Code, SeatNo) VALUES 
('John Doe', 25, 'Male', 'john@email.com', '1234567890', 1, 5001, 1001, 'A5'),
('Jane Smith', 30, 'Female', 'jane@email.com', '0987654321', 2, 5002, 1001, 'B3');



