class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
  raise NoSuchStrategyError unless "RPS".include?(m1[1]) && "RPS".include?(m2[1])
  ["RP", "PS", "SR"].include?(m1[1]+m2[1])? m2 : m1
end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2
  # YOUR CODE HERE
  rps_result(game[0], game[1])
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
  tournament[0][0].is_a?(String)? rps_game_winner(tournament) : rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
end


# game = [ ["Armando", "P"], ["Dave", "S"] ] 
# puts rps_game_winner(game)


# tournament = [
#     [
#         [ ["Armando", "P"], ["Dave", "S"] ],
#         [ ["Richard", "R"],  ["Michael", "S"] ],
#     ],
#     [
#         [ ["Allen", "S"], ["Omer", "P"] ],
#         [ ["David E.", "R"], ["Richard X.", "P"] ]
#     ]
# ]
# puts rps_tournament_winner(tournament)

