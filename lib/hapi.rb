require 'rubygems'

class Hapi
  VERSION = '1.0.0'

  @@uri = nil

  def self.uri
    @@uri
  end

  def self.uri= uri
    @@uri = URI.parse uri
  end

end

require 'hapi/config'
