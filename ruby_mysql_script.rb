#!/usr/bin/ruby

require 'mysql'

begin
     # connect to the MySQL server
     con = Mysql.new 'localhost', 'root', 'vanniekerk', 'banking_system'
     con.query("CREATE TABLE ruby_mada ( id integer NOT NULL primary key, name varchar(50), job varchar(50), gender varchar(6));")
     
     sth = con.prepare( "INSERT INTO ruby_mada(id, name, job, gender)VALUES (?, ?, ?, ?)" )
     sth.execute(1, 'Larry', 'Programmer', 'Male')
     sth.execute(2, 'Sedy', 'Programmer', 'Male')
     sth.execute(3, 'Naly', 'Programmer', 'Male')
     sth.execute(4, 'Tahiry', 'Programmer', 'Male')
     sth.execute(5, 'Provard', 'Accountant', 'Female')
     con.commit
     puts "Record has been created"
     con.query("SELECT * FROM ruby_mada;")
     con.query("SELECT COUNT(*) FROM ruby_mada;")

     con.query("UPDATE ruby_mada SET name = "Aina" WHERE name = 'Tahiry';")
     con.query("DELETE FROM ruby_mada WHERE name = 'Naly';")
     con.query("DELETE FROM clients;")
     con.query("SELECT ruby_mada.name, account_number, balance FROM clients RIGHT OUTER JOIN ruby_mada ON clients.account_number = ruby_mada.id;")
     
rescue Exception => e
     puts e
     puts e.backtrace.join('\n')
     
end
