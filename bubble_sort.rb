# puts("Please input data with space separator.")
# data = gets.split().map(&:to_i)

# data.length.times do |i|
#     (data.length-(i+1)).times do |j|
#         if data[j] > data[j+1]
#             data[j],data[j+1] = data[j+1],data[j]
#         end
#     end
# end

# puts(data.join(" "))


puts "連続したランダムな数字を入力してください"
# 入力された値を1文字ずつ区切って配列にし、それぞれ数値として扱う
data = gets.split("").map(&:to_i)

data.length.times do |i|
  (data.length-(i+1)).times do |j|
    if data[i] > data[i+1]
      data[i], data[i+1] = data[i+1], data[i]
    end
  end
end

puts(data.join())