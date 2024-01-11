-- Phuc Nguyen
-- INFO 330BB Sam Otim
-- Project Queries (Total 6)
USE phn_airlines;

-- Query returns all customers that have multiple bookings
-- Can be set up to use email as contact information to 
-- notify the customer of their bookings, HAVING can be changed
-- to = 1, or 0, to show those customers. Returns email.
SELECT P.Email
FROM Passenger P JOIN Books BK ON P.Passenger_ID = BK.Passenger_ID
JOIN Booking B ON BK.Booking_ID = B.Booking_ID
GROUP BY P.Email
HAVING COUNT(B.Booking_ID) > 1

-- Total Price of Passenger Bookings
-- Returns Passenger id, First name, Last name, calculats total booking 
-- cost of all bookings that the passenger booked, and a count of the bookings. 
-- Only Includes passengers with bookings, ordered by total cost descending.
SELECT P.Passenger_ID, P.First_Name, P.Last_Name, SUM(B.Price) AS TotalBookingCost,
COUNT(B.Booking_ID) AS BookingCount
FROM Passenger P JOIN Books BK ON P.Passenger_ID = BK.Passenger_ID
JOIN Booking B ON BK.Booking_ID = B.Booking_ID
GROUP BY P.Passenger_ID, P.First_Name, P.Last_Name
ORDER BY SUM(B.Price) DESC;

-- Returns Passenger id, First name, Last name, Flight Sequence, Departure Airport,
-- and Arrival Airport of passengers that have connecting flights in their booking,
-- meaning multiple flight sequences, 1 being first and second connecting etc.
SELECT P.Passenger_ID, P.First_Name, P.Last_Name, MFB.Flight_Sequence, F.Departure_Airport, F.Arrival_Airport
FROM Passenger P JOIN Books BK ON P.Passenger_ID = BK.Passenger_ID
JOIN MultiFlightBooking MFB ON BK.Booking_ID = MFB.Booking_ID
JOIN Flight F ON MFB.Flight_ID = F.Flight_ID
WHERE BK.Booking_ID IN (SELECT Booking_ID
FROM MultiFlightBooking
GROUP BY Booking_ID
HAVING COUNT(DISTINCT Flight_Sequence) > 1);

-- Airline Average Revenue Query
-- This query uses both a CTE and SELECT statement to
-- connect the tables together and returns Airline ID,
-- Airline Name, Booking Count, and Airline Revenue Average.
WITH AirlineRevenue AS (
    SELECT
        FA.Airline_ID,
        AL.Airline_Name,
        SUM(B.Price) AS TotalRevenue,
        COUNT(*) AS BookingCount
    FROM Booking B
    JOIN
        MultiFlightBooking MFB ON B.Booking_ID = MFB.Booking_ID
    JOIN
        FlightAssignment FA ON MFB.Flight_ID = FA.Flight_ID
    JOIN
        Airline AL ON FA.Airline_ID = AL.Airline_ID
    GROUP BY
        FA.Airline_ID, AL.Airline_Name
)

SELECT Airline_ID, Airline_Name, BookingCount,
    CASE WHEN BookingCount > 0 THEN TotalRevenue / BookingCount ELSE 0
    END AS AverageBookingPrice
FROM AirlineRevenue;

-- Aircraft to Airline User-Defined Function
-- Takes in VARCHAR, preferably 5 characters,
-- Returns aircraft id, airline name, airline id
-- of all aircrafts within the airline provided.
GO
CREATE FUNCTION dbo.fnAircraftNames (@AirlineID VARCHAR(5))
RETURNS TABLE
AS
RETURN(SELECT AC.Aircraft_ID, AL.Airline_Name, AL.Airline_ID
	FROM Aircraft AC JOIN Airline AL ON AC.Airline_ID = AL.Airline_ID
    WHERE AL.Airline_ID = @AirlineID);
GO

--Test
SELECT * FROM dbo.fnAircraftNames('LH901')

-- Update Passenger's Phone Number Stored Procedure
-- Minimum Length is 10 Max Length is 15
-- May not be accurate in terms of real world phone numbers
-- The procedure can be easier alter to fit the requirements
-- of a real world situation
GO
CREATE PROC UpdatePassengerPhone
@PassengerID INT,
@NewPhoneNum NVARCHAR(16)
AS
IF LEN(@NewPhoneNum) BETWEEN 10 AND 15
    BEGIN
    UPDATE Passenger
    SET Phone = @NewPhoneNum
    WHERE Passenger_ID = @PassengerID
    
    Print 'Phone Number update successfully'
    RETURN
    END;
    ELSE BEGIN Print 'Invalid Phone Number'
END;

--Test
DECLARE @NewPhoneNum VARCHAR(15), @PassengerID INT
EXEC UpdatePassengerPhone @PassengerID = 1, @NewPhoneNum = '500-900-2023';
EXEC UpdatePassengerPhone @PassengerID = 2, @NewPhoneNum = '500-900-20223223';

SELECT passenger_ID, Phone FROM Passenger WHERE passenger_ID = 1 OR passenger_ID = 2;