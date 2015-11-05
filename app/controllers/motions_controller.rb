class MotionsController < ApplicationController
  protect_from_forgery :except => [:date]

  def index

    @all_motion_data = Motion.all

  end


  def show
    #引数で日付を受け取り、
    #その日付のデータをmotionsテーブルから取得
    @motion_data_of_day = Motion.where("flag = ? and date_format(switchtime,'%Y%m%d') = ?", true, params[:date])

    #30分間隔で出力データを作成(一瞬でもtrueがあった場合はtrue(いる)をセット)
    @motionAry = Array.new()

    #フラグがtrueのデータの時間を取得
    @motion_data_of_day.each do |motion|

      #開始時間
      hour_range_start = motion.switchtime.to_s(:withoutMM).to_time
      hour_range_end = hour_range_start.since(10.minutes)

      #measure against infinitie loop
      number = 0

      #10分以内に一度でもいれば抜ける
      until motion.switchtime.between?(hour_range_start, hour_range_end)
        hour_range_start = hour_range_start.since(10.minutes)
        hour_range_end = hour_range_start.since(10.minutes)

        #measure against infinitie loop
        number += 1
        break if number > 6 ;
      end

      pushAry = ["Pi", hour_range_start, hour_range_end]

      #pushするデータが配列の最終列と一致した場合はpushしない
      if @motionAry.last == ["Pi", hour_range_start, hour_range_end]
        p "一致したのでpushしません"
      else
        @motionAry.push(pushAry)
      end

    end #/motion each
  end #/def show
end
