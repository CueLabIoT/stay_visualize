class ToiretsController < ApplicationController
  def index
   @toiret_data = Toiret.all
  end
end
