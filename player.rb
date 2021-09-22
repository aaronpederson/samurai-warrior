class Player
  FULL_HEALTH = 20
  def play_turn(warrior)
    if warrior.feel.empty?
      if warrior.health < FULL_HEALTH
        warrior.rest!
      else
        warrior.walk!
      end
    else
      warrior.attack!
    end
  end
end
