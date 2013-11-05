#!/usr/bin/ruby

require 'mysql'

begin
     # connect to the MySQL server
     con = Mysql.new 'localhost', 'root', '**********', 'banking_system'
     sth = con.prepare( "INSERT INTO employees(id, name, job, gender)VALUES (?, ?, ?, ?)" )
     sth.execute(4, 'Larry', 'Programmer', 'Male')
     sth.execute(5, 'Sedy', 'Programmer', 'Male')
     con.commit
     puts "Record has been created"
rescue Exception => e
     puts e
     puts e.backtrace.join('\n')
     
end
