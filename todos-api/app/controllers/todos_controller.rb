# Todos Controller
class TodosController < ApplicationController
  def index
    render json: { it: 'works' }
  end

  def create
    Todo.create!(title: 'test', created_by: 'david')
    render status: :ok
  end
end
