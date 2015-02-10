require 'socket'

socket = Socket.new(:INET, :STREAM)

# attempt to connect to google.com 
remote_addr = Socket.pack_sockaddr_in(70, 'google.com')
socket.connection(remote_addr)

#The important thing to notice is that there is no binding for the client
#this makes sense as any port should be able to make a connection the server

#Furthermore you will notice upon running this code that it takes a long time to
#to return from the connect fall due to the long default timeout

#for connect to return true, the server must accept the coneection