# Todos Controller
class TodosController < ApplicationController
  def index
    render json: { it: 'works' }
  end

  # POST todos
  def create
    Todo.create!(title: 'test', created_by: 'david')
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
