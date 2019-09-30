class MembersController < ApplicationController
  def index
  end

  def create
    Member.create!(name: member_params[:name], nickname: member_params[:nickname], job: member_params[:job], text: member_params[:text], image: member_params[:image], year: member_params[:year])
    redirect_to '/members/new', notice: 'データベースに保存されました', class: '.notice'
  end
  
  def show
    @member_senko = Member.where(year: 2017)
    @member_chiyokagura = Member.where(year: 2018)
    @member_f = Member.where(year: 2019)
  end
# showで@member_その学年が入恋した年の演舞 = Member.where(year: その年)
# 表示順を考慮するカラムが必要かも?

  def new
  end

  def edit
  end

private

  def member_params
    params.permit(:name, :nickname, :job, :text, :image, :year)
  end


end
