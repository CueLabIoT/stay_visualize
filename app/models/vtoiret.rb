class Vtoiret
  include ActiveModel::Model

  # Formで使用するプロパティを定義する
  attr_accessor :toiret_floor,:toiret_num1,:flag1,:datetime1,:toiret_num2,:flag2,:datetime2

end
