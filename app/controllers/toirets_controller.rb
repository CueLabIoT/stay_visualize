class ToiretsController < ApplicationController
  def index
   @toiret_data = Toiret.all
  end

  def situation
    @toiret_maxdate_group = Toiret.group(:toiret_floor,:toiret_num).select("toiret_floor,toiret_num,flag,used_time,MAX(datetime) as datetime")
    @toiret_floor_list = Toiret.group(:toiret_floor).select(:toiret_floor).order("toiret_floor DESC")

    @toiret_vlist = []
    @toiret_floor_list.each do |toiret|
      vtoiret = Vtoiret.new
      vtoiret.toiret_floor = toiret.toiret_floor
      toiret1 = @toiret_maxdate_group.where(toiret_floor: toiret.toiret_floor,toiret_num: '0')
      toiret1.each do |t1|
        vtoiret.toiret_num1 = 0
        vtoiret.flag1 = t1.flag
        vtoiret.datetime1 = t1.datetime
      end
      toiret2 = @toiret_maxdate_group.where(toiret_floor: toiret.toiret_floor,toiret_num: '1')
      toiret2.each do |t2|
        vtoiret.toiret_num2 = 1
        vtoiret.flag2 = t2.flag
        vtoiret.datetime2 = t2.datetime
      end
      @toiret_vlist.push vtoiret
    end
  end

end
