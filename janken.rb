puts "じゃんけん..."

def janken
  
  puts "0(グー) 1(チョキ) 2(パー)"
  
  player_hand = gets.to_i
  program_hand = rand(0..2)
  jankens = ["グーを出しました","チョキを出しました","パーを出しました"]
  
  puts "ホイ"
  puts "----------"
  puts "あなた：#{jankens[player_hand]}\n相手：#{jankens[program_hand]}"
  
  if player_hand == program_hand
    # puts "あいこで..."
    case_pattern = "パターン１"
    # return true
    
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
      puts "あなたの勝ちです"
      case_pattern = "パターン２"
      # return false
      
    else 
      puts "あなたの負けです"
      case_pattern = "パターン３"
      # return false
      
    end
    
    case case_pattern
    when "パターン１"
      puts "あいこで..."
      return true
      
      when "パターン２"
        puts "----------"
        puts "あっち向いて〜"
        puts "0(上) 1(下) 2(右) 3(左)"
        
        player_finger = gets.to_i
        program_face = rand(0..4)
        direction = ["上", "下","右","左"]
        
        puts "ホイ！"
        puts "----------"
        puts "あなた：#{direction[player_finger]}\n相手：#{direction[program_face]}"
        
        if player_finger == program_face
          puts "あなたの勝利！"
          return false
          
        else 
          puts "じゃんけん..."
          return true
          
        end
        
        when "パターン３"
        puts "----------"
        puts "あっち向いて〜"
        puts "0(上) 1(下) 2(右) 3(左)"
        
        player_finger = gets.to_i
        program_face = rand(0..4)
        direction = ["上", "下","右","左"]
        
        puts "あなた：#{direction[player_finger]}\n相手：#{direction[program_face]}"
        
        if player_finger == program_face
          puts "あなたの敗北！"
          return false
          
        else 
          puts "じゃんけん..."
          return true
          
        end
      end
    end
  
  next_game = true
  
  while next_game do
    next_game = janken
  end
  
  