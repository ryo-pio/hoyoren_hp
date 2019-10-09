class MembersController < ApplicationController
  # before_action :set_member, only: [:destroy, :show]
  before_action :authenticate_user!, only: [:show, :edit, :destroy, :edit, :update, :new]

  def index
  end

  def create
    # binding.pry
    # @member = Member.new(name: member_params[:name], nickname: member_params[:nickname], job: member_params[:job], text: member_params[:text], image: member_params[:image], year: member_params[:year])
    @member = Member.new(member_params)
    @member.save!
    redirect_to members_path, notice: 'データベースに保存されました'
  end
  
  # def show
  # end
# showで@member_その学年が入恋した年の演舞 = Member.where(year: その年)
# 表示順を考慮するカラムが必要かも?
# 本番環境同様のbasic認証で二段階認証?
  def senko
    @member_senko = Member.where(year: 2017)
  end

  def chiyokagura
    @member_chiyokagura = Member.where(year: 2018)
  end

  def f
    @member_f = Member.where(year: 2019)
  end


  def new
    @member = Member.new
  end

  def destroy
    @member = Member.find_by(id: params[:id])
    @member.destroy
    redirect_to members_path, notice: '削除しました'
  end
  # member.idを作る必要あり？
  # groupで分けたほうがいいかも、００代とか

  def edit
    @member = Member.find_by(id: params[:id])
  end

  def update
    @member = Member.find_by(id: params[:id])
    @member.update(name: member_params[:name], job: member_params[:job], text: member_params[:text], image: member_params[:image], year: member_params[:year], memberid: member_params[:memberid])
    redirect_to members_path, notice: '編集されました'
  end

private

  def member_params
    params.permit(:name, :job, :text, :image, :year, :memberid)
  end

  def set_member
    @member = Member.find(params[:id])
  end

end
