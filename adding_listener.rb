require 'socket'

#create the server socket
server_socket = Socket.new(:INET, :STREAM)
addr = Socket.pack_sockaddr_in(4481,'0.0.0.0')
server_socket.bind(addr)

#listen for incoming connections
# the number represents the maximum number of pending connections the server socket 
# is willing to tolerate 
server_socket.listen(5)