class Api::MyExamplesController < ApplicationController
  def fortune_action
    fortunes = [
                "A fresh start will put you on your way.", 
                "He who laughs last is laughing at you.", 
                "A foolish man listens to his heart. A wise man listens to cookies." 
              ]

      random_number = rand(0...3)

      @fortune = fortunes[random_number]
        # could also use @fortune = fortunes.sample

      render 'fortune_view.json.jb'
    end

    def lotto_action
      possible_numbers = (1..60).to_a
      @lucky_numbers = []

      6.times do
        possible_numbers.shuffle!
        picked_number = possible_numbers.pop
        @lucky_numbers << picked_number
      end 
        # could remove lines 21 - 25 of code with @lucky_numbers = possible_numbers.sample(6


      def count_action
        @count = 0
        @count += 1
        render 'count_view.json.jb'
        
      end

      render 'lotto_view.json.jb'
    end 
end 
