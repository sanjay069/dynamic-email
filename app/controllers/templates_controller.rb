class TemplatesController < ApplicationController
before_action :set_task, only: [:show, :edit, :update, :destroy]
def index
@templates = Template.all
end

def show
end

def new
@templates = Template.new
end

def create
@templates = Template.new(task_params)
if @templates.save
redirect_to @templates, notice: 'templates was successfully created.'
else
render :new
end
end

def edit
end

def update
if @templates.update(task_params)
redirect_to @templates, notice: 'templates was successfully updated.'
else
render :edit
end
end

def destroy
@templates.destroy
redirect_to tasks_url, notice: 'Task was successfully destroyed.'
end

private
def set_task
@templates = Template.find(params[:id])
end

def task_params
params.require(:templete).permit(:title, :body)
end
end