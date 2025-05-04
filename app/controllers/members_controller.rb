class MembersController < ApplicationController
  def index
    @members = Member.all # Memberモデルの全レコードを取得してインスタンス変数に格納

    # 学年でフィルタ
    if params[:grade].present?
      @members = @members.where(grade: params[:grade])
    end

    # 組でフィルタ
    if params[:classroom].present?
      @members = @members.where(classroom: params[:classroom])
    end

    # 委員会でフィルタ
    if params[:committee].present?
      @members = @members.where(committee: params[:committee])
    end
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

  def edit
    @member = Member.find(params[:id])
  end
  
  def update
    @member = Member.find(params[:id])

    if @member.update(member_params)
      redirect_to members_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
   @member = Member.find(params[:id])
   
    if @member.destroy
      redirect_to members_path
    end
  end

  private
  def member_params # スコープ内で使うパラメータ定義
    params.require(:member).permit(:name, :grade, :classroom, :age, :committee, :text)
  end
  
end
