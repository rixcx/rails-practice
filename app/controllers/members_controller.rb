class MembersController < ApplicationController
  def index
    @members = Member.all # Memberモデルの全レコードを取得してインスタンス変数に格納
  end
end
