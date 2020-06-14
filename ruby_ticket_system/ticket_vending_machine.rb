class TicketVendingMachine
  def initialize
    @movies = []
  end

  def movies
    @movies
  end

  # 配列を代入するために=をつけたメソッド名にしている（半角空白を無視するRubyの特性を利用）。
  # =をつけないとexec.rbで配列の値をもらうことができない
  def movies=(movies)
    @movies = movies
  end

  def display_menu
    puts "どの映画を見ますか？"
    i = 0
    self.movies.each do |movie|
      puts "#{i} #{movie.title}: #{movie.fee}円"
      i += 1
    end
  end

  def display_result(customer)
    choosed_movie = self.movies[customer.choose_movie]
    customer.money -= choosed_movie.fee
    puts "#{choosed_movie.title}のチケットを買ったよ！"
    puts "#{customer.name}の所持金が#{customer.money}円になりました！"
  end
end