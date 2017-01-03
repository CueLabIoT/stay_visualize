class ToiretsController < ApplicationController
  def index
   @toiret_data = Toiret.all
  end

  def situation
    @toiret_data = Toiret.all
    @toiret_maxdate_group = Toiret.group(:toiret_floor,:toiret_num).select("toiret_floor,toiret_num,MAX(datetime) as datetime")
    @toiret_floor_list = Toiret.group(:toiret_floor).select("toiret_floor").order("toiret_floor DESC")

    @toiret_vlist = []
    @toiret_floor_list.each do |toiret|
      vtoiret = Vtoiret.new
      vtoiret.toiret_floor = toiret.toiret_floor

      toiret_m1 = @toiret_maxdate_group.find_by(toiret_floor: toiret.toiret_floor,toiret_num: '0')
      toiret1 = @toiret_data.find_by(toiret_floor: toiret_m1.toiret_floor,toiret_num: '0',datetime: toiret_m1.datetime)
      vtoiret.toiret_num1 = 0
      vtoiret.flag1 = toiret1.flag
      vtoiret.datetime1 = toiret1.datetime

      toiret_m2 = @toiret_maxdate_group.find_by(toiret_floor: toiret.toiret_floor,toiret_num: '1')
      toiret2 = @toiret_data.find_by(toiret_floor: toiret_m2.toiret_floor,toiret_num: '1',datetime: toiret_m2.datetime)
      vtoiret.toiret_num2 = 1
      vtoiret.flag2 = toiret2.flag
      vtoiret.datetime2 = toiret2.datetime

      @toiret_vlist.push vtoiret
    end
  end
end
