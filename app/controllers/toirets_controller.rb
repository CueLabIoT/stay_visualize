class ToiretsController < ApplicationController
  def index
   @toiret_data = Toiret.all
   @toiret_max = Toiret.maximum(:distance)
   @fifteenF = Toiret.where("toiret_floor = ?","15F").maximum(:datetime)
   @tenF = Toiret.where("toiret_floor = ?","10F").maximum(:datetime)

   @check_toiret = Toiret.where(toiret_floor: '15F',datetime: @fifteenF)
  end

  def situation
   @toiret_data = Toiret.all
   @toiret_max = Toiret.maximum(:distance)
   @fifteenF = Toiret.where("toiret_floor = ?","15F").maximum(:datetime)
   @tenF = Toiret.where("toiret_floor = ?","10F").maximum(:datetime)

   @check_toiret = Toiret.where(toiret_floor: '15F',datetime: @fifteenF)
  end

end
