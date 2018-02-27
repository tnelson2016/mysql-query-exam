/*
1) Select a distinct list of ordered airports codes. Be sure to name the column correctly. Be sure to order the results correctly.
*/
SELECT DISTINCT departAirport as Airports from flight;


/*
2)Provide a list of delayed flights departing from San Francisco (SFO).
*/
SELECT name, flightNumber, scheduledDepartDateTime, arriveAirport, status From flight INNER JOIN airline ON airline.id WHERE status = 'delayed' AND departAirport = "SFO" AND name = 'Delta';

/*
3.Provide a distinct list of cities that American airlines departs from.
*/
SELECT Distinct departAirport as Cities From flight INNER JOIN airline ON airline.id WHERE airlineID = '1';

/*
4. Provide a distinct list of airlines that conducts flights departing from ATL.
/*
SELECT DISTINCT airline.name as Airline from flight JOIN airline on airline.ID WHERE airline.id BETWEEN 1 and 2;

/*
5.Provide a list of airlines, flight numbers, departing airports, and arrival airports where flights departed on time.
*/
SELECT name, flightNumber, departAirport, arriveAirport From flight INNER JOIN airline ON airline.id WHERE scheduledDepartDateTime = actualDepartDateTime and name = 'delta';


/*
6. Provide a list of airlines, flight numbers, gates, status, and arrival times arriving into Charlotte (CLT) on 10-30-2017. Order your results by the arrival time.
/*
SELECT airline.name as Airline, flight.flightNumber as Flight, flight.Gate as Gate, time(scheduledArriveDateTime) as Arrival, flight.status as status From flight INNER JOIN airline ON airline.id WHERE arriveAirport = "CLT" AND Status = "scheduled"; and scheduledArriveDateTime  = '2017-10-30' ORDER By time(scheduledArriveDateTime) ASC;

/*
7. List the number of reservations by flight number. Order by reservations in descending order.
*/
Select Distinct flight.flightNumber as Flight, reservation.passengerID as reservation from Flight Inner Join reservation ON reservation.passengerID BETWEEN 1 and 15 Order By reservation Desc;

/*
8. List the average ticket cost for coach by airline and route. Order by AverageCost in descending order.
*/


/*
9.Which route is the longest?
/*
SELECT (flight.departAirport),(flight.arriveAirport),(flight.miles) from flight WHERE flight.miles = '2290';

Select reservation.passengerID, passenger.firstName, passenger.lastName, flight.miles from passenger INNer Join flight ON flight.miles WHERE reservation. passengerID Between 1 and 15 ORDER By DESC;