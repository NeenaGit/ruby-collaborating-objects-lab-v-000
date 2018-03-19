require 'pry'

class Song
attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
end

# def songs
#   @songs
# end

def name= (name)
  @name = name
end

def artist_name= (name)
  if (self.artist.nil?)
   self.artist = Artist.new(name)
   Artist.all << self.artist
  else
   self.artist.name = name
  end
  binding.pry
end


def self.new_by_filename(file_name)
   song = self.new(file_name.split(" - ")[1])
   song.artist_name= (file_name.split(" - ")[0])
   song
 end

 def save
   # self.artist = Artist.new(name)
   @@all << self
 end


end
