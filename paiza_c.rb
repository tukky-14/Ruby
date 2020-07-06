# スキルチェックC

# 【ミニコンピュータ】
# 4
# SET 1 10
# SET 2 20
# ADD 40
# SUB 20

# count = gets.to_i
# var1 = 0
# var2 = 0

# count.times do
#   order = gets.chomp.split(' ')
#   case order[0]
#   when "SET"
#     if order[1] == "1"
#       var1 = order[2].to_i
#     else
#       var2 = order[2].to_i
#     end
#   when "ADD"
#     var2 = var1 + order[1].to_i
#   when "SUB"
#     var2 = var1 - order[1].to_i
#   end
# end

# puts "#{var1} #{var2}"

# ------------------------------------
# 【クロニクルコラボ問題】文章サイズ変更
# 3 4 7
# wdip
# #dig
# et#k

# input = gets.split(' ').map(&:to_i)
# count = input[0]
# text = []

# count.times do 
#   str = gets.chomp
#   text << str
# end

# sentence = text.join
# puts sentence.scan(/.{1,#{input[2]}}/)

# ------------------------------------
# # 【完全数とほぼ完全数】
# def divisor(num)
#   divisors = []
#   n = 1
#   while n < num do
#     if num % n == 0
#       divisors << n
#     end 
#     n += 1
#   end
#   return divisors
# end

# count = gets.to_i

# count.times do
#   input = gets.to_i
#   ans = divisor(input)
#   if ans.sum == input
#     puts "perfect"
#   elsif input - ans.sum == 1
#     puts "nearly"
#   else
#     puts "neither"
#   end
# end

# ------------------------------------
# 【テストの採点】

# input = gets.split(' ').map(&:to_i)
# student_number = [*1..input[0]]
# passing_score = input[1]

# student_number.each do |student|
#   input = gets.split(' ').map(&:to_i)
#   score = input[0]
#   absense = input[1]
#   grade = 
#   if score - absense * 5 > 0
#     score - absense * 5
#   else score - absense * 5 <= 0
#     0
#   end

#   if grade >= passing_score
#     puts student
#   end
# end

# ------------------------------------
# 【ボタンを押すゲーム】
# game = gets.split(' ').map(&:to_i)
# push_count = gets.to_i
# inputs = gets.split(' ').map(&:to_i)

# button = (1..game[0]).to_a
# gameover_count = game[1]

# good = 0
# bad = 0
# n = 0
# inputs.each do |input|
#   n = 0 if n == button.length
#   if input == button[n]
#     good += 1
#   else
#     bad += 1
#   end
#   n += 1
# end

# if bad < gameover_count
#   puts good * 1000
# else
#   puts -1
# end

# ------------------------------------
# # 【カード並べ 】
# numbers = gets.split(' ').sort

# number1 = numbers[-1] + numbers[0]
# number2 = numbers[-2] + numbers[1]

# puts number1.to_i + number2.to_i

# ------------------------------------
# def check_str(str, partial)
#   if str.include?(partial)
#     return str
#   end
# end

# count = gets.to_i
# partial = gets.chomp
# strs = []

# count.times do
#   str = gets.chomp
#   if check_str(str, partial)
#     strs <<  check_str(str, partial)
#   end
# end

# if strs.any?
#   puts strs
# else
#   puts "None"
# end

# ------------------------------------
# # 【先生の宿題：不正解】

# input = gets.split(' ')
# a = input[0]
# b = input[2]
# c = input[4]
# calc = input[1]

# x = 0
# if a == "x"
#   if calc == "+"
#     x = c.to_i - b.to_i
#   else
#     x = c.to_i + b.to_i
#   end
# elsif b == "x"
#   if calc == "+"
#     x = c.to_i - b.to_i
#   else
#     x = c.to_i + b.to_i
#   end
# else
#   if calc == "+"
#     x = a.to_i + b.to_i
#   else
#     x = a.to_i - b.to_i
#   end
# end

# puts x