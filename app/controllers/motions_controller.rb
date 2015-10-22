class MotionsController < ApplicationController
  def index
    #motionsテーブルのデータをすべて取得
    @motion_data = Motion.all
  end
end
