def jazzify(chords)
  chords.map { |chord| chord[chord.size - 1] != '7' ? "#{chord}" + '7' : chord }
end
