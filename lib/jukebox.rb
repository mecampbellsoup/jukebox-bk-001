class Jukebox
  def initialize(songs)
    @songs = songs
  end

  def call
  end

  def help
    # print available commands
    puts "help list play exit"
  end

  def list
    puts songs   
  end

  def play(song = nil)
    begin
      song = Integer(song)
    rescue ArgumentError
    rescue TypeError
    end 

    case song
    when nil
      puts "You didn't choose a song!"\
      " What song would you like to play?"
    when String
      # lookup the song by title
      match = songs.detect { |s| s.match(song) }
      puts "Now Playing: #{match}"
    when Integer
      # lookup the song by index/position
      puts "Now Playing: #{songs[song - 1]}"
    end
  end

  private

  attr_reader :songs

end
