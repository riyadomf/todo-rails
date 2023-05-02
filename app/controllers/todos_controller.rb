class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todos = Todo.new
  end

  def create
    @todo = Todo.new(title: "...", body: "...")

    if @todo.save
      redirect_to @todo
    else 
      render :new, status: :unprocessable_entity
    end
  end
end
