class Gameover
    def initialize
        @font = Font.new(40)
    end
        def draw
        Window.draw_font(100, 100, "あ", @font)
    end
end