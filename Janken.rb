result_status = "janken_start"

# あっち向いてホイで勝敗が決するまで繰り返す
while result_status == "you_win"||"you_lose" do
  
  # 直前のじゃんけん、あっち向いてホイの結果による宣言文の変化
  case result_status
    when "janken_start"
    start_declaration = "じゃんけん…"
    after_declaration = "ホイ！"
      
    when "janken_draw"
    start_declaration = "あいこで…"
    after_declaration = "しょ！"
    
  end
  
  puts "#{start_declaration}"
  puts"1（グー）,2（チョキ）,3（パー）,1~3以外の文字（終了）"
  
  input_number=gets.to_i
  
  puts "#{after_declaration}"
  puts "******************"
  
  # 相手のじゃんけん、あっち向いてホイの出方を乱数で設定
  opponent_janken = rand(3)
  opponent_hoi = rand(4)
  
  # 入力値別のじゃんけん結果の表示
  case input_number
    when 1
      you_janken = "グー"
      case opponent_janken
        when 0
          opponent_janken = "グー"
          result_status = "janken_draw"
        when 1
          opponent_janken = "チョキ"
          result_status = "janken_win"
        when 2
          opponent_janken = "パー"
          result_status = "janken_lose"
      end
      
    when 2
      you_janken = "チョキ"
      case opponent_janken
        when 0
          opponent_janken = "グー"
          result_status = "janken_lose"
        when 1
          opponent_janken = "チョキ"
          result_status = "janken_draw"
        when 2
          opponent_janken = "パー"
          result_status = "janken_win"
      end
      
    when 3
      you_janken = "パー"
      case opponent_janken
        when 0
          opponent_janken = "グー"
          result_status = "janken_win"
        when 1
          opponent_janken = "チョキ"
          result_status = "janken_lose"
        when 2
          opponent_janken = "パー"
          result_status = "janken_draw"
      end
      
    else
      break
      
  end      

  puts "あなたは#{you_janken}を出しました"
  puts "相手は#{opponent_janken}を出しました"
  puts "******************"
  

  case result_status
  
    when "janken_win"  
      janken_winner = "あなた"
      janken_loser = "相手"
      
      puts "あっち向いて〜"
      puts"1（上）,2（下）,3（左）,4（右）,1~4以外の文字（終了）"
      
      input_number=gets.to_i
      
      puts "ホイ！"
      puts "******************"  
      
        case input_number
          when 1
            you_direction = "↑"
            
            case opponent_hoi
              when 0
                opponent_direction = "↑"
                result_status = "you_win"
              when 1
                opponent_direction = "↓"
                result_status = "janken_start"
              when 2
                opponent_direction = "←"
                result_status = "janken_start"
              when 3
                opponent_direction = "→"
                result_status = "janken_start"
            end
            
          puts "#{janken_winner}が指を差した方向：#{you_direction}"
          puts "#{janken_loser}が顔を向けた方向：#{opponent_direction}"             
          
          when 2 
            you_direction = "↓"
            
            case opponent_hoi
              when 0
                opponent_direction = "↑"
                result_status = "janken_start"
              when 1
                opponent_direction = "↓"
                result_status = "you_win"
              when 2
                opponent_direction = "←"
                result_status = "janken_start"
              when 3
                opponent_direction = "→"
                result_status = "janken_start"
            end
            
          puts "#{janken_winner}が指を差した方向：#{you_direction}"
          puts "#{janken_loser}が顔を向けた方向：#{opponent_direction}" 
            
          when 3 
            you_direction = "←"
            
            case opponent_hoi
              when 0
                opponent_direction = "↑"
                result_status = "janken_start"
              when 1
                opponent_direction = "↓"
                result_status = "janken_start"
              when 2
                opponent_direction = "←"
                result_status = "you_win"
              when 3
                opponent_direction = "→"
                result_status = "janken_start"
            end
            
          puts "#{janken_winner}が指を差した方向：#{you_direction}"
          puts "#{janken_loser}が顔を向けた方向：#{opponent_direction}"             
            
          when 4 
            you_direction = "→"
            
            case opponent_hoi
              when 0
                opponent_direction = "↑"
                result_status = "janken_start"
              when 1
                opponent_direction = "↓"
                result_status = "janken_start"
              when 2
                opponent_direction = "←"
                result_status = "janken_start"
              when 3
                opponent_direction = "→"
                result_status = "you_win"
            end
            
          puts "#{janken_winner}が指を差した方向：#{you_direction}"
          puts "#{janken_loser}が顔を向けた方向：#{opponent_direction}"   
          
          else
            break
            
        end
        
    when "janken_lose"  
      janken_winner = "相手"
      janken_loser = "あなた"
      
      puts "あっち向いて〜"
      puts"1（上）,2（下）,3（左）,4（右）,1~4以外の文字（終了）"
      
      input_number=gets.to_i
      
      puts "ホイ！"
      puts "******************"  
      
        case input_number
          when 1
            you_direction = "↑"
            
            case opponent_hoi
              when 0
                opponent_direction = "↑"
                result_status = "you_lose"
              when 1
                opponent_direction = "↓"
                result_status = "janken_start"
              when 2
                opponent_direction = "←"
                result_status = "janken_start"
              when 3
                opponent_direction = "→"
                result_status = "janken_start"
            end

          puts "#{janken_winner}が指を差した方向：#{opponent_direction}"
          puts "#{janken_loser}が顔を向けた方向：#{you_direction}"    
          
          when 2 
            you_direction = "↓"
            
            case opponent_hoi
              when 0
                opponent_direction = "↑"
                result_status = "janken_start"
              when 1
                opponent_direction = "↓"
                result_status = "you_lose"
              when 2
                opponent_direction = "←"
                result_status = "janken_start"
              when 3
                opponent_direction = "→"
                result_status = "janken_start"
            end
            
          puts "#{janken_winner}が指を差した方向：#{opponent_direction}"
          puts "#{janken_loser}が顔を向けた方向：#{you_direction}"          
            
          when 3 
            you_direction = "←"
            
            case opponent_hoi
              when 0
                opponent_direction = "↑"
                result_status = "janken_start"
              when 1
                opponent_direction = "↓"
                result_status = "janken_start"
              when 2
                opponent_direction = "←"
                result_status = "you_lose"
              when 3
                opponent_direction = "→"
                result_status = "janken_start"
            end
            
          puts "#{janken_winner}が指を差した方向：#{opponent_direction}"
          puts "#{janken_loser}が顔を向けた方向：#{you_direction}"  
            
          when 4 
            you_direction = "→"
            
            case opponent_hoi
              when 0
                opponent_direction = "↑"
                result_status = "janken_start"
              when 1
                opponent_direction = "↓"
                result_status = "janken_start"
              when 2
                opponent_direction = "←"
                result_status = "janken_start"
              when 3
                opponent_direction = "→"
                result_status = "you_lose"
            end
            
          puts "#{janken_winner}が指を差した方向：#{opponent_direction}"
          puts "#{janken_loser}が顔を向けた方向：#{you_direction}"   
        
          else
            break
        
        end
  end 
  
  case result_status
    when "you_win"
      puts "おめでとう！あなたの勝利です！"
    
    when "you_lose"
      puts "残念！相手の勝利です。"
      
  end

end
