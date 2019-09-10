class CompletesController < ApplicationController

    before_action :set_todo
    def create
        @todo.completed = true
        @todo.save
        redirect_to todos_path, notice: 'Articulo completado de la lista'
    end 

    def destroy
        @todo.completed = false
        @todo.save
        #byebug
        redirect_to todos_path, notice: 'Articulo NO completado de la lista'
    end

    private

    def set_todo
        @todo = Todo.find(params[:id])
    end
end
