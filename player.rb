# require "pry"
# binding.pry  

class Player
  FULL_HEALTH = 20
  def play_turn(warrior)
    @last_health ||= warrior.health
    if warrior.feel.empty? 
      if warrior.health < FULL_HEALTH && (warrior.health >= @last_health)
        warrior.rest!
      else
        warrior.walk!
      end
    else
      warrior.attack!
    end
    @last_health = warrior.health
  end
end
