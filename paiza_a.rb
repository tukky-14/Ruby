# 出し目の数値変換
def fingers_score(fingers, scores)
  numbers = []
  fingers.each do |finger|
    numbers << scores[finger]
  end
  return numbers
end

# 勝ち目に変更
def win_finger(fingers)
  wins = []
  fingers.each do |finger|
    if finger == "G"
      wins << "P"
    elsif finger == "C"
      wins << "G"
    else
      wins << "C"
    end
  end
  return wins
end

# input = gets.split(' ').map(&:to_i)
# count = input[0]
# fingers = input[1]
# hands = gets.chomp.split('')


scores = {"G"=> 0, "C"=> 2, "P"=> 5}
fingers = ["C", "G", "P", "C"]

p win_finger(fingers)
p fingers_score(fingers, scores)