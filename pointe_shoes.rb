class PointeShoes

  attr_accessor :level, :feet

  def report_fitting
    puts"Your level is #{@level} and you have a foot type of #{feet}"
  end

  def level_models

  end

end

Capezio = PointeShoes.new
pointeshoes.level = "beginner"
pointeshoes.feet = "giselle"