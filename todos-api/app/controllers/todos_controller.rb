# Todos Controller
class TodosController < ApplicationController
  def index
    render json: { it: 'works' }
  end

  # POST todos
  def create
    params.permit(:title, :created_by)
    Todo.create(title: params[:title], created_by: params[:created_by])
    render status: :ok
  end

  # GET todo/:id
  def show
    # Route automatically maps the id
    todo = Todo.find(params[:id])
    render(json: todo, status: :ok)
  end

  # DELETE todo/:id
  def destroy
    Todo.find(params[:id]).destroy
    render(status: :ok)
  end

end
