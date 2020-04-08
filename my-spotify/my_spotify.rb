class Song
    attr_reader :id, :artist, :name

    def initialize(id, artist, name)
        @id = id
        @artist = artist
        @name = name
    end
end

class Playlist
    attr_reader :id, :name, :playlist_items

    def initialize(id, name)
        @id = id
        @name = name
        @playlist_items = {}
        @first_song_id = ""
        @last_song_id = ""
    end

    def add(song)
        if @playlist_items.size == 0
            @first_song_id = song.id
            @last_song_id = song.id
            @playlist_items[song.id] = PlaylistItem.new(song, 0, "", "")
        else
            # Arrange pointers before inserting new playlist item
            current_last_item = @playlist_items[@last_song_id]
            current_last_item.next_song_id = song.id

            # Create new playlist item
            playlist_position = @playlist_items.size
            previous_song_id = @last_song_id
            next_song_id = ""
            @playlist_items[song.id] = PlaylistItem.new(song, playlist_position, previous_song_id, next_song_id)
            @last_song_id = song.id
        end
    end

    def remove(song)
        if @first_song_id == @last_song_id # Only element
            @playlist_items.clear
            @first_song_id = ""
            @last_song_id = ""
        elsif @last_song_id == song.id # Last element
            item_to_delete = @playlist_items[song.id]
            second_to_last_item = @playlist_items[item_to_delete.previous_song_id]
            @last_song_id = second_to_last_item.song.id
            second_to_last_item.next_song_id = ""
            @playlist_items.delete(song.id)
        elsif @first_song_id == song.id # First element
            item_to_delete = @playlist_items[song.id]
            next_item = @playlist_items[item_to_delete.next_song_id]
            next_item.previous_song_id = ""
            @first_song_id = next_item.song.id
            @playlist_items.delete(song.id)
            # Adjust playlist positions
            current_item = next_item
            while current_item != nil
                current_item.playlist_position -= 1
                current_item = @playlist_items[current_item.next_song_id]
            end
        else  
            item_to_delete = @playlist_items[song.id]
            previous_item = @playlist_items[item_to_delete.previous_song_id]
            next_item = @playlist_items[item_to_delete.next_song_id]

            previous_item.next_song_id = next_item.song.id
            next_item.previous_song_id = previous_item.song.id
            @playlist_items.delete(song.id)
            # Adjust playlist positions
            current_item = next_item
            while current_item != nil
                current_item.playlist_position -= 1
                current_item = @playlist_items[current_item.next_song_id]
            end
        end
    end

    def print()
        puts "Playlist: #{name}"
        
        current_item = @playlist_items[@first_song_id]
        while current_item != nil
            puts "#{current_item.playlist_position + 1}) #{current_item.song.artist} - #{current_item.song.name}"
            current_item = @playlist_items[current_item.next_song_id]
        end
    end

    def get_first_song()
        @playlist_items[@first_song_id]
    end

end

class PlaylistItem
    attr_reader :song
    attr_accessor :playlist_position, :previous_song_id, :next_song_id

    def initialize(song, playlist_position, previous_song_id, next_song_id)
        @song = song
        @playlist_position = playlist_position
        @previous_song_id = previous_song_id
        @next_song_id = next_song_id
    end
end

class MySpotifyPlayer
    attr_reader :playlists

    def initialize(playlists)
        @playlists = playlists.map{ |playlist| [playlist.id, playlist] }.to_h
        @history = []
    end

    def play(playlist_id) 
        playlist = @playlists[playlist_id]

        current_playlist_item = playlist.get_first_song
        while current_playlist_item != nil
            play_song(current_playlist_item.song)
            current_playlist_item = playlist.playlist_items[current_playlist_item.next_song_id]
        end
    end

    def play_song(song)
        puts "Now playing: #{song.artist} - #{song.name}"
        @history.push(song)
    end
end

black_or_white = Song.new(1, "Michael Jackson", "Black or White")
uptown_funk = Song.new(2, "Bruno Mars", "Uptown Funk")
brave = Song.new(3, "Sara Bareilles", "Brave")
geek_in_the_pink = Song.new(4, "Jason Mraz", "Geen in the Pink")
how_long = Song.new(5, "Charlie Puth", "How Long")
senorita = Song.new(6, "Shawn Mendes", "Señorita")

pop_playlist = Playlist.new(1, "My Pop Playlist")
pop_playlist.add(black_or_white)
pop_playlist.add(uptown_funk)
pop_playlist.add(brave)
pop_playlist.add(geek_in_the_pink)
pop_playlist.remove(uptown_funk)
pop_playlist.remove(geek_in_the_pink)
pop_playlist.remove(black_or_white)
pop_playlist.add(senorita)
pop_playlist.add(how_long)
pop_playlist.remove(senorita)
pop_playlist.remove(brave)
pop_playlist.remove(how_long)
pop_playlist.add(uptown_funk)
pop_playlist.add(geek_in_the_pink)
pop_playlist.add(black_or_white)
pop_playlist.add(senorita)
pop_playlist.add(brave)
pop_playlist.add(how_long)

i_will_not_bow = Song.new(7, "Breaking Benjamin", "I will not bow")
welcome_home = Song.new(8, "Coheed & Cambria", "Welcome Home")
givin_up = Song.new(9, "Emarosa", "Givin' up")
master_of_puppets = Song.new(10, "Metallica", "Master of Puppets")
basket_case = Song.new(11, "Green Day", "Basket Case")

rock_playlist = Playlist.new(2, "My Rock Playlist")
rock_playlist.add(i_will_not_bow)
rock_playlist.add(welcome_home)
rock_playlist.add(givin_up)
rock_playlist.add(master_of_puppets)
rock_playlist.add(basket_case)

spotify = MySpotifyPlayer.new([pop_playlist, rock_playlist])
spotify.playlists.each do |id, playlist|
    puts "PLAYLIST: #{playlist.name} (#{playlist.id})"
    spotify.play(id)
end



