class MembersController < ApplicationController
  def index
  end

  def create
    Member.create!(name: member_params[:name], nickname: member_params[:nickname], job: member_params[:job], text: member_params[:text], image: member_params[:image], year: member_params[:year])
    redirect_to '/members/new', notice: 'データベースに保存されました'
  end
  
  def show
  end

  def new
  end

  def edit
  end

private

  def member_params
    params.permit(:name, :nickname, :job, :text, :image, :year)
  end


end
