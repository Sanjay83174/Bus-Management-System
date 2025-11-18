Bus Booking System

A comprehensive desktop application for bus ticket booking and management system built with Python and MySQL. This system provides separate interfaces for administrators and users with complete CRUD functionality for bus schedules and ticket management.

🚀 Features
👨‍💼 Admin Features
Secure Authentication - Login with admin credentials

Schedule Management

Add new bus schedules

Update existing schedules (departure, destination, fare, dates)

View all booked tickets per bus

Real-time Monitoring - Track vacant seats and bookings

👤 User Features
Ticket Booking

Search available buses by route

Complete booking with payment simulation

Automatic fare calculation with discounts for minors

Ticket Management

Search tickets by ticket number

Update personal information

Cancel bookings with automatic seat availability update

Digital Tickets - Download tickets as text files

🛠️ Technology Stack
Frontend: Python Tkinter (GUI)

Backend: Python 3.x

Database: MySQL

Data Storage: Pickle files for backup

Additional Libraries: mysql-connector-python

📋 Prerequisites
Before running this application, ensure you have:

Python 3.6 or higher

MySQL Server

Required Python packages:

bash
pip install mysql-connector-python
🗄️ Database Setup
Create MySQL database named ms

Execute the following SQL commands:

sql
CREATE DATABASE ms;
USE ms;

-- Admin table
CREATE TABLE admin (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50)
);

-- Schedule table
CREATE TABLE schedule (
    Boarding VARCHAR(100),
    Destination VARCHAR(100),
    Fare DECIMAL(10,2),
    DOB DATETIME,
    DOA DATETIME,
    Code INT PRIMARY KEY,
    TotalSeats INT,
    VacantSeats INT
);

-- Tickets table
CREATE TABLE tickets (
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Contact VARCHAR(15),
    Luggage INT,
    TicketNumber INT PRIMARY KEY,
    Code INT,
    SeatNo VARCHAR(10),
    FOREIGN KEY (Code) REFERENCES schedule(Code)
);
Insert sample data (optional):

sql
INSERT INTO admin (username, password) VALUES 
('admin', 'admin123'),
('superuser', 'password123');
🚀 Installation & Setup
Clone the repository

bash
git clone https://github.com/yourusername/bus-booking-system.git
cd bus-booking-system
Configure Database Connection

Update MySQL credentials in the code:

python
mycon = ms.connect(host='localhost', user='your_username', passwd='your_password')
Prepare Required Files

Ensure bg.png exists in the project directory for the background image

The system will automatically create necessary .dat files

Run the Application

bash
python bus_booking_system.py
💡 Usage Guide
For Administrators
Login with admin credentials

Add new bus schedules with complete details

Update existing schedules as needed

Monitor bookings by bus code

Logout securely

For Users
Select "User" from main menu

Book tickets by providing personal details and route information

Choose from available buses

Complete payment process

Download digital ticket

Manage existing bookings (search, update, cancel)

🔧 Key Functions
Booking System
Fare Calculation: Adults (full fare + luggage charges), Minors (5% discount + reduced luggage charges)

Seat Allocation: Random seat assignment (A1-H15)

Real-time Updates: Vacant seats update automatically

Data Management
Dual Storage: MySQL database + Pickle files for backup

Auto Cleanup: Removes expired schedules daily

Data Integrity: Maintains consistency across all storage systems

📁 Project Structure
text
bus-booking-system/
├── bus_booking_system.py    # Main application file
├── bg.png                   # Background image
├── schedules.dat            # Schedule data backup
├── ticket1.dat              # Ticket data backup
├── README.md               # Project documentation
└── database_setup.sql      # Database schema
🎯 Features in Detail
Admin Panel
Add new bus schedules with complete details

Modify existing schedules (all fields)

View all bookings for specific buses

Secure authentication system

User Portal
Intuitive ticket booking interface

Route-based bus search

Comprehensive ticket management

Digital ticket download

Payment simulation

Smart Features
Automatic fare calculation with age-based discounts

Real-time seat availability

Data persistence across sessions

Automatic cleanup of expired records

🔒 Security Features
Password protection for admin access

Input validation and error handling

Secure data storage

Session management

📞 Support
For issues or questions:

Check database connection settings

Verify file permissions for .dat files

Ensure all required Python packages are installed

Confirm MySQL server is running

🤝 Contributing
Fork the project

Create your feature branch (git checkout -b feature/AmazingFeature)

Commit your changes (git commit -m 'Add some AmazingFeature')

Push to the branch (git push origin feature/AmazingFeature)

Open a Pull Request

📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

🎉 Acknowledgments
Built with Python Tkinter for GUI

MySQL for robust data management

Pickle for data persistence

Note: This is a desktop application designed for educational purposes. For production use, consider adding enhanced security features and error handling.

