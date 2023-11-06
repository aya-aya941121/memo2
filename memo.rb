require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
 
 puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
 
 memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています
 
 if memo_type == 1
   puts"ファイル名を入力してください"
   file_name = gets.chomp
   
   csv_file_name = "#{file_name}.csv"
   
   puts"新規メモの内容を入力してください"
   memo_content = readlines.join("\n").chomp
   
   CSV.open("memo.csv","w") do |csv|
     csv << [memo_content]
   end
   
   puts"メモを作成しました"
   
elsif memo_type == 2
   puts"既存のファイル名を入力してください"
   file_name = gets.chomp
   
   csv_file_name = "#{file_name}.csv"
   
   puts"追記するメモの内容を入力してください"
   memo_content = readlines.join("\n").chomp
   CSV.open("memo.csv","a") do |csv|
     csv << [memo_content]
   end
   
   puts"メモを編集しました"
   
 else
   puts"１か２を入力してください"
 end
