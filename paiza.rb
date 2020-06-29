# ・末尾が s, sh, ch, o, x のいずれかである英単語の末尾に es を付ける
# ・末尾が f, fe のいずれかである英単語の末尾の f, fe を除き、末尾に ves を付ける
# ・末尾の1文字が y で、末尾から2文字目が a, i, u, e, o のいずれでもない英単語の末尾の y を除き、末尾に ies を付ける
# ・上のいずれの条件にも当てはまらない英単語の末尾には s を付ける

# 自分の得意な言語で
# Let's チャレンジ！！

# paizaスキルチェック C
# ーーーーーーーーーーーーーーーーーーーー
def change_ves(input_line)
  if input_line.end_with?("f")
    puts "#{input_line.chop}ves"
  else
    puts "#{input_line.chop.chop}ves"
  end
end

def change_ies(input_line)
  if ["a", "i", "u", "e", "o"].include?(input_line[-2])
    puts "#{input_line}s"
  else
    puts "#{input_line.chop}ies"
  end
end

input_line = gets.to_i
count = input_line

count.times do
  input_line = gets.chomp
  if input_line.end_with?("s", "sh", "ch", "o", "x" )
    puts "#{input_line}es"
  elsif input_line.end_with?("f", "fe")
    change_ves(input_line)
  elsif input_line.end_with?("y")
    change_ies(input_line)
  else
    puts "#{input_line}s"
  end
end
