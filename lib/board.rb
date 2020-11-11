class Board
  def initialize(player_x, player_o)
    @check_box = []
    @player_x = player_x
    @player_o = player_o
  end

  def run_game
    # This method will invoke at the beging of the game from  main class
    empty
    puts 'Who would like to begin?'
    player = gets.chomp.capitalize
    player == @player_x.name ? start_game(@player_x) : start_game(@player_o)
  end

  def empty
    # check if the board is empty or not
    9.times do
      @check_box.push('_')
    end
  end

  def start_game(player)
    # Start game and defined players name and symbol
    puts "\n#{player.name} starts!"
    display_number
    # choice = choose_check_box
    # modify_board(player, choice)
    display_board(@check_box)
    turn(player)
  end

  def play_game(player)
    # continue Playing Game
    puts "\nIt's your turn, #{player.name}!"
    # choice = choose_check_box
    # modify_board(player, choice)
    display_board(@check_box)
    turn(player)
  end

  def display_board(board)
    # this method will Display the Board
    puts ' ___ ___ ___'
    (0..2).each do |i|
      print "|_#{board[i]}_"
    end
    puts '|'
    (3..5).each do |i|
      print "|_#{board[i]}_"
    end
    puts '|'
    (6..8).each do |i|
      print "|_#{board[i]}_"
    end
    puts '|'
    puts ' '
  end

  def display_number
    # This method will Display the numbers inside the Board.
    @check_box_number = @check_box.each_with_index.map do |_value, _indx|
      if @check_box == '_'
        (i + 1).to_s
      else
        '_'
      end
    end
    display_board(@check_box_number)
  end

  def choose_check_box
    # this method will allow players to choose which check_box they want to use as X or O
    nil
  end

  def check_box_empty?(_boardd)
    # This method will check if the box on the board are empty or not
    nil
  end

  def check_box_full?(_postion)
    # This method checks if the box on the board are full or not
    nil
  end

  def update_display_board(_player, _choice)
    # This method will update the display board after each move
    nil
  end

  def winner?
    # This method will check for the Winner
    nil
  end

  def draw
    # This method will chekc for the Draw when none of the player won the game
    nil
  end

  def victory(_player)
    # this method will output which player has won the game
    nil
  end

  def turn(player)
    # This method will Change player's Turn for next move
    # player.odd? ? 'player_x' : 'player_o'
    player == @player_x ? play_game(@player_o) : play_game(@player_x)
  end

  def play_again?
    # this method will invoke after the game is either Draw or one of the player has won the game
    nil
  end
end
