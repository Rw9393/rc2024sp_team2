class Score 
    @@score = 0
    @@level = "NORMAL"
    def initialize
        @font = Font.new(40, "美咲明朝")
    end
    def levelchanger(level)
        @@level = level
    end
    def add(score)
        @@score += score
    end
    def update
        Window.draw_font(500, 0, "#{@@score}", @font)
        if @@level == "EASY" && @@score >= 5000
            Manager.current_screen(:clear)
        elsif @@level == "NORMAL" && @@score >= 10000
            Manager.current_screen(:clear)
        elsif @@level == "HARD" && @@score >= 30000
            Manager.current_screen(:clear)
        end
    end
end
