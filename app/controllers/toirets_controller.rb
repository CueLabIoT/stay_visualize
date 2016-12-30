class ToiretsController < ApplicationController
  def index
   @toiret_data = Toiret.all
  end

  def situation
    
   @toiret_data = Toiret.all
   @fifteenF = Toiret.where("toiret_floor = ?","15F").maximum(:datetime)
   @tenF = Toiret.where("toiret_floor = ?","10F").maximum(:datetime)
   @F60 = Toiret.where("toiret_floor = ?","6F").maximum(:datetime)
   @check_toiret = Toiret.where(toiret_floor: '6F',datetime: @F60)
  end

end
