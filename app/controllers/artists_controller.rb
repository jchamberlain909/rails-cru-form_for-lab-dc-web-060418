class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :edit, :update]
    

    def show
        
    end

    def new
        @artist=Artist.new
    end


    def create
        Artist.create(post_params(:name,:bio))
        redirect_to artist_path(Artist.last.id)
    end

    def edit
        
    end

    def update
        @artist.update(post_params(:name, :bio))
        redirect_to artist_path(params[:id])
    end


    private

    def set_artist
      @artist = Artist.find(params[:id])
    end

    def post_params(*args)
  	    params.require(:artist).permit(*args)
	end	

end
