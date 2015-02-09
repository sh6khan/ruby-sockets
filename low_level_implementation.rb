#require the ruby socket library 
require 'socket'

#creating a new TCP socket
# the INET stands for internet
# the STREAM is the data type
socket = Socket.new(:INET, :STREAM)

#creating a C struct to hold the address for listening
addr = Socket.pack_sockaddr_in(4481, '0.0.0.0')

#bind the sockets
socket.bind(addr)