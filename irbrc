require 'rubygems'
require 'wirble'
require 'pp'
Wirble.init
Wirble.colorize


# Easily print methods local to an object's class
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end


# Save some content from irb to a file and open in textmate.
def mate(content, filename='debug.txt', cleanup=true)
  File.open(filename, 'w') { |f| f.write(content) }
  `mate -w #{filename}` # waits for Textmate to close file
  `rm -rf ./#{filename}` if cleanup
end

