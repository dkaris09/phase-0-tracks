required_relative '6.6assessment.rb'

test_game = Wordgame.new("unicorn")

test_game.user_view 
test_game.reveal_letters("u")
test_game.user_view
puts test_game.check_score
test_game.reveal_letters("n")
test_game.user_view
puts test_game.check_score