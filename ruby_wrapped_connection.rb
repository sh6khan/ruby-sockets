require 'socket'

#the loop allows us to manage multiple connection
Socket.tcp('google.com', 80) do |connection|
	connection.write "GET / HTTP/1.1\r\n"
	connection.close
end
