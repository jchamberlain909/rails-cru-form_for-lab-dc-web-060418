class SongsController < ApplicationController
    before_action :set_song, only: [:show, :edit, :update]
    def index
        @songs = Song.all
    end

    def show
        
    end

    def new
        @song = Song.new 
    end

    def create
        Song.create(post_params(:name,:artist_id, :genre_id))
        redirect_to song_path(Song.last.id)
    end

    def edit
        
    end

    def update
        @song.update(post_params(:name,:artist_id, :genre_id))
        redirect_to song_path(params[:id])
    end


    private

    def set_song
      @song = Song.find(params[:id])
    end

    def post_params(*args)
  	    params.require(:song).permit(*args)
	end	
end
