class Score 
    @@score = 0
    def initialize
        @font = Font.new(40)
    end
    def add(score)
        @@score += score
    end
    def update
        Window.draw_font(500, 0, "#{@@score}", @font)
    end
end
