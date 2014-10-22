class PuzzlesController < ApplicationController
    # GET /puzzles
    # GET /puzzles.json
    def index
        @puzzle_hash = {}
        10.times do
            plain = Puzzle.get_random_word
            jumble = Puzzle.jumble(plain)
            @puzzle_hash.merge!(jumble => plain)
        end

        respond_to do |format|
            format.html # index.html.erb
        end
    end

end