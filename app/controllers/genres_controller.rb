class GenresController < ApplicationController
    def show
        @genre = find_genre
    end

    def create
        @genre = Genre.create(genre_params)
        redirect_to @genre
    end

    def edit
        @genre = find_genre
    end

    def update
        @genre = find_genre
        @genre.update(genre_params)
        redirect_to @genre
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end

    def find_genre
        Genre.find(params[:id])
    end
end
