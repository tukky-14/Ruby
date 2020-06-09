class DevilFruit
  def initialize
    puts ""
    puts "能力者になりたいんですね？"
    puts "何系の悪魔の実を食べたいか、番号を入力して下さい。"
    puts "[1]動物系"
    puts "[2]超人系"
    puts "[3]自然系"
    @type = gets.to_i
      while @type != 1 && @type != 2 && @type != 3 do
        puts "悪魔の実は3種類しかありません。1~3の番号を入力して下さい。"
        @type = gets.to_i
      end
  end

  def select
    puts "どんな悪魔の実が食べたいですか？？"
    puts "イメージをカタカナ2~3文字でお答え下さい。"
    @input = gets.to_s.chomp
    if @type == 1
      zoan
    elsif @type == 2
      paramiecia
    elsif @type == 3
      logia
    else
    end
  end

  def zoan
    puts "------------------------------------------"
    puts "おめでとうございます！"
    puts "\nあなたは#{@input}#{@input}の実のゾオン系能力者です🐱"
    puts "身体能力が純粋に強化されるでしょう。"
    demerit
  end

  def paramiecia
    puts "------------------------------------------"
    puts "おめでとうございます！"
    puts "\nあなたは#{@input}#{@input}の実のパラミシア系能力者です🦸"
    puts "人智を超えた能力が身に付くでしょう。"
    demerit
  end

  def logia
    puts "------------------------------------------"
    puts "おめでとうございます！"
    puts "\nあなたは#{@input}#{@input}の実のロギア系能力者です🌦"
    puts "身体を自然物そのものに変化させ、自在に操れるようになるでしょう。"
    demerit
  end

  def demerit
    puts "\n海に嫌われたので泳げなくなりました🔨"
    puts "また、複数の悪魔の実を食べることはできませんのでご注意下さい。"
    puts "ただし、黒ひげは除きます。"
    puts ""
    puts "------------------------------------------"
  end
end

talent = DevilFruit.new
talent.select