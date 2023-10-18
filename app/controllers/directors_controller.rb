class DirectorsController < ApplicationController
    def show
      @directors = Director.all
    end

    def list
      @director = Director.find(params[:id])
      @movies = @director.movies
    end

    def new
      @director1 = Director.new
    end

    def create
      @director1 = Director.new(name: params[:director][:name],
                        genre_id: params[:director][:genre],
                        nationality: params[:director][:nationality],
                        birty_date: params[:director][:birty_date])
      if @director1.save
          return redirect_to list_director_path(@director1.id)
      end
      render :new
    end

    def edit
      @director = Director.find(params[:id])
    end

    def update
      @director = Director.find(params[:id])
      if @director.update(name: params[:director][:name],
          genre_id: params[:director][:genre],
          nationality: params[:director][:nationality],
          birty_date: params[:director][:birty_date])

      return redirect_to list_director_path(@director.id)
      end
      render :edit
    end

    def publish
      
    end

    def draft
      
    end
  end
  