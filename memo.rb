require "csv"

 puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 memo_type = gets.chomp.to_i
 if memo_type == 1
 puts "拡張子を除いたファイル名を入力してください"
 memo_title = gets.chomp.to_s
 puts "ファイル名[" + memo_title + ".csv]" + "メモの内容を入力してください。" 
 puts "入力後[Ctrl+D]で保存"
 memo_input = readlines.map(&:chomp)
 CSV.open(memo_title + ".csv","w") do |csv|
 csv << memo_input
end
 elsif memo_type == 2
 puts "編集したいメモの拡張子を除いたファイル名を入力してください"
 memo_title_d = gets.chomp.to_s
 puts "ファイル名[" + memo_title_d + ".csv]を編集中"
 puts "編集後[Ctrl+D]で保存"
 memo_input = readlines.map(&:chomp)
 CSV.open(memo_title_d + ".csv","a")do |csv|
 csv << memo_input
end
 else
 puts "error"
 end