class Api::TodosController < ApplicationController
  def index
    @todos = Todo.all
    render json: @todos
  end

  def create
    @todo = Todo.new todo_params
    if @todo.save
      render json: @todo, status: :created
    else
      head :bad_request
    end
  end

  private

    def todo_params
      params.require(:todo).permit(:description, :completed)
    end
end
