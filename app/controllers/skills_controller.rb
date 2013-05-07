class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find_by_id(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new
    @skill.task = params[:task]
    @skill.user_id = params[:user_id]
    
    if @skill.save
            redirect_to skills_url
          else
      render 'new'
    end
  end

  def edit
    @skill = Skill.find_by_id(params[:id])
  end

  def update
    @skill = Skill.find_by_id(params[:id])
    @skill.task = params[:task]
    @skill.user_id = params[:user_id]
    
    if @skill.save
            redirect_to skills_url
          else
      render 'edit'
    end
  end

  def destroy
    @skill = Skill.find_by_id(params[:id])
    @skill.destroy
        redirect_to skills_url
      end
end
