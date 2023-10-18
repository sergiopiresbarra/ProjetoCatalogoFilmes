class MoviesController < ApplicationController
    def show
      @movies = Movie.all
    end

    def list
      @movie = Movie.find(params[:id])
    end

    def new
      @movie1 = Movie.new
    end

    def create
      @movie1 = Movie.new(name: params[:movie][:name],
                        genre_id: params[:movie][:genre],
                        release_year: params[:movie][:release_year],
                        synopsis: params[:movie][:synopsis],
                        origin_country: params[:movie][:origin_country],
                        running_time: params[:movie][:running_time],
                        director_id: params[:movie][:director])
      if @movie1.save
          return redirect_to list_movie_path(@movie1.id)
      end
      render :new
    end

    def edit
      @movie = Movie.find(params[:id])
    end

    def update
      @movie = Movie.find(params[:id])
      if @movie.update(name: params[:movie][:name],
          genre_id: params[:movie][:genre],
          release_year: params[:movie][:release_year],
          synopsis: params[:movie][:synopsis],
          origin_country: params[:movie][:origin_country],
          running_time: params[:movie][:running_time],
          director_id: params[:movie][:director])

      return redirect_to list_movie_path(@movie.id)
      end
      render :edit
    end

    def publish
      
    end

    def draft
      
    end
  end
  