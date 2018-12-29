class GenresController < ApplicationController

  def create
    @genre=Genre.new(post_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre=Genre.find(params[:id])
    @genre.update(post_params(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre=Genre.find(params[:id])
  end

  def new 
    @genre=Genre.new
  end

  def edit
    @genre=Genre.find(params[:id])
  end

  def index
    @genres=Genre.all
  end

  private
	
	def post_params(*args)
    params.require(:genre).permit(*args)
  end

end