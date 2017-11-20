# Todos Controller
class TodosController < ApplicationController

  swagger_controller :todos, 'Todos Management'

  swagger_api :index do
    summary "To create user"
    notes "Implementation notes, such as required params, example queries for apis are written here."
    param :form, "user[name]", :string, :required, "Name of user"
    param :form, "user[age]", :integer, :optional, "Age of user"
    param_list :form, "user[status]", :string, :required, "Status of user, can be active or inactive"
    response :success
    response :unprocessable_entity
  end
  
  def index
    file = File.read(Rails.root + 'supporting_files/mock_data.json')
    render json: file
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
