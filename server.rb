require 'socket'

server = TCPServer.new('localhost', 8080)

loop {
  client = server.accept
  request = client.readpartial(2048)

  puts request
}

# def parse(request)
#   method, path, version = request.lines[0].split

#   {
#     path: path,
#     method: method,
#     headers: parse_headers(request)
#   }
# end

# def parse_headers(request)
#   headers = {}

#   request.lines[1..-1].each do |line|
#     return headers if line == "\r\n"

#     header, value = line.split
#     header        = normalize(header)

#     headers[header] = value
#   end

#   def normalize(header)
#     header.gsub(":", "").downcase.to_sym
#   end
# end

# puts parse(request)
# puts parse_headers(request)