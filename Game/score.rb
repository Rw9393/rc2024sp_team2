class Score 
    @@score = 0
    @@level = "NORMAL"

    def initialize
        @font = Font.new(40, "美咲明朝")
        @level_hash = {EASY:5000, NORMAL:10000, HARD:30000} 
    end
    
    def levelchanger(level)
        @@level = level
    end
    
    def add(score)
        @@score += score
    end
    
    def update
        levels = @@level.to_sym
        Window.draw_font(450, 0, "Score:#{@@score}(Target:#{@level_hash[levels]})", @font)

        if @@level == "EASY" && @@score >= @level_hash[:EASY]
            Manager.current_screen(:clear)
        elsif @@level == "NORMAL" && @@score >= @level_hash[:NORMAL]
            Manager.current_screen(:clear)
        elsif @@level == "HARD" && @@score >= @level_hash[:HARD]
            Manager.current_screen(:clear)
        end
    end
end
