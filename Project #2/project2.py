# Hootan Hosseinzadeganbushehri


import pymysql


conn = pymysql.connect(
    host='127.0.0.1',
    user='mp2',
    passwd='eecs116',
    db='flights'
)
cur = conn.cursor()

choice = 1
while choice != 0:
    print("\nPlease choose from the below options [0-6]:")
    print("1. Find the cheapest flight given airports and a date.")
    print("2. Find the flight and seat information for a customer.")
    print("3. Find all non-stop flights for an airline.")
    print("4. Add a new airplane.")
    print("5. Increase low-cost fares(≤ 200) by a factor.")
    print("6. Remove a seat reservation.")
    print("0. Exit")
    choice = int(input(">"))
    if choice == 1:
        dep_code = input("Please enter the airport code for the departure airport: ")
        des_code = input("Please enter the airport code for the destination airport: ")
        date_leg = input("What is the date of the flight in yyyy-mm-dd? ")
        sql = "WITH temp(f, a) AS " \
              "(SELECT fare.Flight_number AS f, fare.Amount AS a " \
              "FROM fare JOIN leg_instance ON fare.Flight_number = leg_instance.Flight_number " \
              "WHERE Leg_date = %s AND Arrival_airport_code = %s && Departure_airport_code = %s ), " \
              "temp_min(mini) AS " \
              "(SELECT min(temp.a) AS mini "\
              "FROM temp) " \
              "SELECT temp.f, temp.a " \
              "FROM temp, temp_min " \
              "WHERE temp.a = temp_min.mini "
        val = (date_leg, des_code, dep_code)
        cur.execute(sql, val)
        for row in cur.fetchall():
            print("The cheapest flight is", row[0] + ", and the cost is", str(row[1]) + ".")
    elif choice == 2:
        cus_name = input("Please enter the customer's name: ")
        sql = "SELECT Flight_number, Seat_number FROM seat_reservation WHERE Customer_name = %s"
        val = cus_name
        cur.execute(sql, val)
        for row in cur.fetchall():
            print("The flight number is", row[0] + ",", "and the seat number is", row[1] + ".")
    elif choice == 3:
        airline_name = input("What is the name of the airline? ")
        sql = "SELECT flight.Flight_number FROM flight, flight_leg WHERE Airline = %s AND flight_leg.Leg_number = 1 " \
              "AND flight_leg.Flight_number = flight.Flight_number "
        val = airline_name
        cur.execute(sql, val)
        print("The non-stop flights are:", end=" ")
        result = []
        for row in cur.fetchall():
            result.append(row[0])
        print(", ".join(result))
    elif choice == 4:
        temp = []
        sql = "SELECT max(Airplane_id) FROM Airplane"
        cur.execute(sql)
        for row in cur.fetchall():
            temp.append(row)
        a_id = temp[0][0]
        a_id += 1
        seats_num = int(input("Please enter the total number of seats: "))
        airline_type = input("Please enter the airplane type: ")
        sql = "INSERT INTO Airplane (Airplane_id, Total_number_of_seats, Airplane_type) VALUES (%s, %s, %s)"
        val = (a_id, seats_num, airline_type)
        cur.execute(sql, val)
        conn.commit()
        print("The new airplane has been added with id:", a_id)
    elif choice == 5:
        factor = float(input("Please enter a factor (e.g. 0.2 will increase all fares by 20%): "))
        sql = "UPDATE Fare SET Amount = Amount + Amount * %s WHERE Amount <= 200"
        val = factor
        affected_rows = cur.execute(sql, val)
        conn.commit()
        print(affected_rows, "fares are affected")
    elif choice == 6:
        flight_num = input("Please enter the flight number: ")
        c_name = input("Please enter the customer name: ")
        temp_1 = []
        sql = "SELECT Seat_number FROM Seat_reservation WHERE Flight_number = %s AND Customer_name = %s"
        val = (flight_num, c_name)
        cur.execute(sql, val)
        for row in cur.fetchall():
            temp_1.append(row)
        seat_number = temp_1[0][0]
        sql = "DELETE FROM Seat_reservation WHERE Flight_number = %s AND Customer_name = %s"
        val = (flight_num, c_name)
        affected_rows = cur.execute(sql, val)
        conn.commit()
        print("Seat", seat_number, "is released.")
    elif choice == 0:
        print("Bye...")
    else:
        print("Wrong Choice! Please choose an option between 0 to 6")

conn.close()
