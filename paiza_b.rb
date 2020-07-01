# paizaスキルチェック B

# 【複数形への変換】
# ・末尾が s, sh, ch, o, x のいずれかである英単語の末尾に es を付ける
# ・末尾が f, fe のいずれかである英単語の末尾の f, fe を除き、末尾に ves を付ける
# ・末尾の1文字が y で、末尾から2文字目が a, i, u, e, o のいずれでもない英単語の末尾の y を除き、末尾に ies を付ける
# ・上のいずれの条件にも当てはまらない英単語の末尾には s を付ける

# def change_ves(input_line)
#   if input_line.end_with?("f")
#     puts "#{input_line.chop}ves"
#   else
#     puts "#{input_line.chop.chop}ves"
#   end
# end

# def change_ies(input_line)
#   if ["a", "i", "u", "e", "o"].include?(input_line[-2])
#     puts "#{input_line}s"
#   else
#     puts "#{input_line.chop}ies"
#   end
# end

# input_line = gets.to_i
# count = input_line

# count.times do
#   input_line = gets.chomp
#   if input_line.end_with?("s", "sh", "ch", "o", "x" )
#     puts "#{input_line}es"
#   elsif input_line.end_with?("f", "fe")
#     change_ves(input_line)
#   elsif input_line.end_with?("y")
#     change_ies(input_line)
#   else
#     puts "#{input_line}s"
#   end
# end
# ------------------------------------

# スキルアップ【うなぎの席】
# ーーーーーーーーーーーーーーーーーーーー
# 6 3
# 3 2
# 1 6
# 2 5

# 入力1で配列を作成
# 入力2times繰り返す
# 入力1から連続した2の値を、
# 配列に含まれている場合は配列から削除
# 配列に含まれていない場合は何もしない

# # 席数として入力された値を配列にするメソッド(配列, 数値)
# def input_array(length)
#   array = []
#   count = 1
#   length.times do
#     array << count
#     count += 1
#   end
#   return array
# end

# # 来客を配列にするメソッド
# def customer_array(people, seat_num, max)
#   array = []
#   count = seat_num.to_i
#   people.times do
#     if count <= max
#       array << count
#       count += 1
#     else
#       count = 1
#       array << count
#       count += 1
#     end
#   end
#   return array
# end

# # 席が余っているか確認するメソッド
# def seat_check(store_seat, customer_seats)
#   if store_seat.include?(customer_seats)
#     left_store_seat = store_seat.join.delete(customer_seats.join)
#     store_seat = left_store_seat.split()
#     return store_seat
#   else
#     return store_seat
#   end
# end

# input = gets.split(" ").map(&:to_i)
# all_seat_count = input[0]

# store_seat =
# input[1].times do
#   store_seat = input_array(input[0])
#   customer = gets.split(" ").map(&:to_i)
#   customer_seats = customer_array(customer[0], customer[1], store_seat.length)
#   store_seat = seat_check(store_seat, customer_seats)
# end

# puts all_seat_count - store_seat.length
# puts store_seat

# ------------------------------------
# 【最遅出社時刻】
# 1 行目には 3 つの整数 a, b, c が入力されます。これらは通勤ルートの各ステップにかかる時間（単位は分）を表します。
# 2 行目には配座駅から出る電車の本数を表す整数 N が入力されます。
# 続く N 行は各電車の発車時刻を表しています。 すなわち、i = 1, 2, ..., N に対し、h_i 時 m_i 分に配座駅を発車する電車があることを表します。

# 30 30 10
# 3
# 6 0
# 7 0
# 8 0

# 25 30 30
# 2
# 7 20
# 8 0

# 10 10 10
# 6
# 8 5
# 8 15
# 8 25
# 8 35
# 8 45
# 8 55

# 間に合う入力値を時刻に変換
def calc_time(hour, minute, time)
  if minute - time < 0
    minute = 60 + (minute - time)
    hour -= 1
  else
    minute -= time
  end
  puts format("%02d:%02d", hour, minute)
end

input = gets.split(' ').map(&:to_i)
count = gets.to_i
in_time = []
train_walk_time = input[1] + input[2]

# 9：00を超えない時間を選択して配列
count.times do
  schedule = gets.split(' ').map(&:to_i)
  if schedule[1] + train_walk_time < 60 || schedule[0] <= 7
    in_time << schedule
  end
end

# 配列の中から一番遅い時間を選択し、時刻計算
calc_time(in_time.last[0], in_time.last[1], input[0])