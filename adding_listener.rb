require 'socket'

#create the server socket
server_socket = Socket.new(:INET, :STREAM)
addr = Socket.pack_sockaddr_in(4481,'0.0.0.0')
server_socket.bind(addr)

#listen for incoming connections
server_socket.listen(5)