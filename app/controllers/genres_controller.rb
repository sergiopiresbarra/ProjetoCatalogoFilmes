class GenresController < ApplicationController
    def show
      @genres = Genre.all
    end

    def list
      @genre = Genre.find(params[:id])
      @movies = @genre.movies
    end

    def new
      @genre1 = Genre.new
    end

    def create
      @genre1 = Genre.new(name: params[:genre][:name])
      if @genre1.save
          return redirect_to list_genre_path(@genre1.id)
      end
      render :new
    end

    def edit
      @genre = Genre.find(params[:id])
    end

    def update
      @genre = Genre.find(params[:id])
      if @genre.update(name: params[:genre][:name])

      return redirect_to list_genre_path(@genre.id)
      end
      render :edit
    end

    def publish
      
    end

    def draft
      
    end
  end
  