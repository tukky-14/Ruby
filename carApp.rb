def register_data(cars)
  puts "車種の入力をして下さい"
  type = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力して下さい"
  fuel_economy = gets.to_f
  # 入力された値を浮動小数点数 Floatで小数点表示。「10」なら「10.0」に。
  puts "乗車可能人数を入力して下さい"
  capacity = gets.to_i
  car = { type: type, fuel_economy: fuel_economy, capacity: capacity }
  # 入力された値をcatハッシュに代入。
  cars << car
  # carハッシュを配列carsに代入。
end

def show_cars(cars)
  cars.each_with_index do |car, index|
    # each_with_indexメソッドを使用すると、配列のインデックス番号が使用できる
    puts "[#{index}]: #{car[:type]}"
    # indexには要素番号、carには配列の要素（ハッシュ）が入る
  end
  puts "確認したい番号を入力して下さい。"
  input = gets.to_i
  car = cars[input]
  # 配列carsからinput番号のハッシュを変数carに代入
  if car
    show_data(car)
    # show_dataメソッド呼び出し
  else
    puts "該当する番号はありません。"
  end
end

def show_data(car)
  puts car[:type]
  puts "1Lあたりの走行可能距離:#{car[:fuel_economy]}km/l"
  puts "乗車人数:#{car[:capacity]}人"

  puts "これから走る距離(km)を入力して下さい。"
  input_distance = gets.to_f

  puts "これから乗る人数を入力して下さい。"
  input_capacity = gets.to_i

  calculate_fuel_consumption(car, input_distance)
  car_capacity(car, input_capacity)
end

def calculate_fuel_consumption(car, distance)
  fuel_consumption = distance / car[:fuel_economy]
  # 走行距離を1Lあたりの走行可能距離で割って、変数fuel_consumptionに代入
  puts "その目的地までは、ガソリンを#{fuel_consumption.round(1)}L消費します。"
  # roundで四捨五入。()の数値は桁数を表している
end

def car_capacity(car, capacity)
  capacity = car[:capacity] - capacity
  # 乗車人数 - 乗車可能人数の値を変数capacityに代入

  if capacity == 0
    puts "車の定員丁度です。"
  elsif capacity > 0
    puts "後、車には#{capacity}人乗ることができます。"
  else
    puts "#{capacity.abs}人定員オーバーです。"
    # 対象となる数値に対して「abs」メソッドを実行すると絶対値を取得できる（負の値でも整数に変換）
  end
end
cars = []

while true do
  puts "番号を入力して下さい"
  puts "[0]:登録をする"
  puts "[1]:データを確認する"
  puts "[2]:終了する"
  input = gets.chomp

  case input
  when "0"
    register_data(cars)
  when "1"
    show_cars(cars)
  when "2"
    exit
  else
    puts "無効な値です"
  end
end