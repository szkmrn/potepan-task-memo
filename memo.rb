require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp #getsは文字列をで受けとるから数値として受けたいならto_iをつける


if memo_type == "1" 
    puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。"
    input_name = gets.chomp
    
    
    puts "メモの内容を記入して下さい。Ctrl+Dで保存します。"
    input_content = $stdin.read
    
    
    File.open("#{input_name}.csv","w") do |f|
        f.puts "#{input_content}"
    end
 elsif memo_type == "2"
    puts "既存のメモを変更します。拡張子を除いたファイル名を入力してください。"
    input_name = gets.chomp
     
    puts "追記するメモの内容を記入してください。Ctrl+Dで保存します。"
     
    input_content = $stdin.read
    
    File.open("#{input_name}.csv","a+") do |ff|    
        ff.puts"#{input_content}"
    end
    
    

end