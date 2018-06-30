class GenresController < ApplicationController
    before_action :set_genre, only: [:show, :edit, :update]

    def show
        
    end

    def new
        @genre=Genre.new
    end

    def create
        Genre.create(post_params(:name))
        redirect_to genre_path(Genre.last.id)
    end

    def edit
        
    end

    def update
        @genre.update(post_params(:name))
        redirect_to genre_path(params[:id])
    end


    private

    def set_genre
      @genre = Genre.find(params[:id])
    end

    def post_params(*args)
  	    params.require(:genre).permit(*args)
	end	
end
