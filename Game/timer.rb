class Timer
    def initialize
        @font = Font.new(40, "美咲明朝")
        @count = 0
        @sec = 0
        @min = 0
    end

    def update
        if @count <= 60
            @count += 1
        else
            @count = 0
            @sec += 1
        end 
        if @sec >= 60
            @min += 1
            @sec = 0
        end

        if @min < 9
            if @sec > 9
                Window.draw_font(850, 0, "0#{@min}:#{@sec}", @font)
            else
                Window.draw_font(850, 0, "0#{@min}:0#{@sec}", @font)
            end
        else
            if @sec < 9
                Window.draw_font(850, 0, "#{@min}:0#{@sec}", @font)
            else
                Window.draw_font(850, 0, "#{@min}:#{@sec}", @font)
            end
        end
    end
end