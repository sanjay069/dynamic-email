class LanguagesController < ApplicationController
before_action :set_task, only: [:show, :edit, :update, :destroy]
def index
@languages = Language.all
end

def show
end

def new
@languages = Language.new
end

def create
@languages = Language.new(task_params)
if @languages.save
redirect_to @languages, notice: 'languages was successfully created.'
else
render :new
end
end

def edit
end

def update
if @languages.update(task_params)
redirect_to @languages, notice: 'languages was successfully updated.'
else
render :edit
end
end

def destroy
@languages.destroy
redirect_to tasks_url, notice: 'Task was successfully destroyed.'
end

private
def set_task
@languages = Language.find(params[:id])
end

def task_params
params.require(:language).permit(:language, :country)
end
end