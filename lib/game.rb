require_relative 'player'

class Game

  attr_reader :game_name

      def initialize(game_name)
        @game_name = game_name
      end

      def play(o_or_x)
        @o_or_x = o_or_x
      end

end
