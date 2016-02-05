class PeopleController < ApplicationController
  
  def index
    @people = People.all
  end
 
  def show
    @people = People.find(params[:id])
  end
 
  def new
    @people = People.new
  end
 
  def edit
    @people = People.find(params[:id])
  end
 
  def create
    @people = People.new(people_params)
 
    if @people.save
      redirect_to @people
    else
      render 'new'
    end
  end
 
  def update
    @people = People.find(params[:id])
 
    if @people.update(people_params)
      redirect_to @people
    else
      render 'edit'
    end
  end
 
  def destroy
    @people = People.find(params[:id])
    @people.destroy
 
    redirect_to people_path
  end
 
  private
    def people_params
      params.require(:people).permit(:name, :weight, :height, :colour)
    end
end
