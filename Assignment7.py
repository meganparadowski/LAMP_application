#!/usr/local/bin/python3
import cgi
import cgitb
cgitb.enable()
import pymysql
import os
from credentials import * 

form = cgi.FieldStorage()

sort = form["sort"].value 
quantity = form["quantity"].value 

query  = '''SELECT patient_name,room_id,ec_name,doctor_name,doctor_image,doctor_profile
			FROM patients,rooms,emergencyContacts,doctors
			WHERE patients.patient_roomid = rooms.room_id
            AND patients.patient_doctorid = doctors.doctor_id
            AND patients.patient_ecid = emergencyContacts.ec_id
            ORDER BY {}
            LIMIT {}'''.format(sort,quantity)
            
connection = pymysql.connect(host,user,passwd,db,charset="utf8mb4",cursorclass=pymysql.cursors.DictCursor)
c = connection.cursor()		
c.execute(query)
r = c.fetchall() 
            
print('Content-type: text/html;charset=utf-8')
print("\n\n")

print("<!DOCTYPE html>")

print("<html>")
print("<head>")
print("<title>LAMP Exercise: Python and MySQL</title>")
print('''<link href="Assignment7.css" rel="stylesheet" type="text/css"/>''')
print("</head>")
print("<body>")

print("<p>Here are the results: </p>")
	

print("<table>")
print("<tr>")
print("  <th>Patient</th>")
print("  <th>Room</th>")
print("  <th>Emergency Contact</th>")
print("  <th>Doctor</th>")
print("  <th>Doctor Image</th>")
print("  <th>Doctor Profile</th>")
print("</tr>")

for row in r:
	print("<tr>")
	print("  <td>"+str(row['patient_name'])+"</td>")
	print("  <td>"+str(row['room_id'])+"</td>")
	print("  <td>"+str(row['ec_name'])+"</td>")
	print("  <td>"+str(row['doctor_name'])+"</td>")
	print("  <td><img src='"+row['doctor_image']+"'width=200 height=150></td>")
	print("  <td><a href='"+row['doctor_profile']+"'>"+row['doctor_profile']+"</a></td>")
	print("</tr>")

print("</table>\n")

	   
print("</body>")
print("</html>")

c.close()