def register_book(books) # 本の登録メソッド。引数に配列booksを持っている
  puts '著者を入力してください'
  author = gets.chomp
  puts 'タイトルを入力してください'
  title = gets.chomp
  puts '価格を入力してください'
  price = gets.to_i # あとで検索するために数値で取得
  book = { author: author, title: title, price: price } # 先に入力させてからハッシュbookに代入
  books << book # 配列演算子を使ってハッシュbookを配列bookに代入
end

def show_books(books) # 本の閲覧メソッド。引数に配列booksを持っている
  puts "平均価格: #{average_price(books)}" # 引数入れてaverage_priceメソッドを呼び出し
  puts "見たい番号を入力してください"
  index = 1 # 見たい番号の始まりは1
  books.each do |book| # 配列booksの中のハッシュデータを1つずつeachで取り出す
    puts "#{index}: #{book[:title]}" # 変数index番号、ハッシュbookの中からタイトルを取り出して表示
    index += 1
  end
  input = gets.to_i
  show_detail(books[input - 1]) #  (入力された番号 - 1（配列は0から始まるため）)番目のハッシュデータを持ってshow_detailメソッドを呼び出し
end

def show_detail(book) # 本の詳細メソッド。引数に選ばれたハッシュデータを持っている
  puts "著者 #{book[:author]}" 
  puts "タイトル #{book[:title]}"
  puts "価格 #{book[:price]}円"
end

def average_price(books) #  本の平均価格算出メソッド。引数に配列booksを代入。
  total = 0 # 金額合計を変数totalで初期化
  books.each do |book| # 配列booksの中のハッシュデータを1つずつeachで取り出す
    total += book[:price] #取り出したbookの価格をtotalに加えていく
  end
  average = total / books.length # 算出された金額合計totalをlengthで割り、変数averageに代入
end

books = []
while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i #条件式caseで場合の数だけ条件指定 
  when 0
    register_book(books)
  when 1
    show_books(books)
  when 2
    exit
  else
    puts '無効な値です'
  end
end