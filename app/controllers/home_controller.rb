class HomeController < ApplicationController
  def movies
    @movies = Movie.all
  end

  def index
    
  end

  def directors
    @directors = Director.all
  end

  def genres
    @genres = Genre.all
  end
end
