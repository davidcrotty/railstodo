# Todos Controller
class TodosController < ApplicationController
  def index
    render json: { it: 'works' }
  end
end
