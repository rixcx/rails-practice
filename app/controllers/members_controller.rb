class MembersController < ApplicationController
  def index
    @members = Member.all # Memberモデルの全レコードを取得してインスタンス変数に格納
  end
  
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to members_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private
  def member_params # スコープ内で使うパラメータ定義
    params.require(:member).permit(:name, :grade, :classroom, :age, :text)
  end
  
end
