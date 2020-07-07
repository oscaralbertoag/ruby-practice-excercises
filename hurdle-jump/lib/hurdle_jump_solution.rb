def hurdle_jump(hurdles, athlete_height)
  hurdles.each do |h|
    return false if h > athlete_height
  end
  true
end
