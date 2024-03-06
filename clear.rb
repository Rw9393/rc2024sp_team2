class Clear
    def initialize
        @font = Font.new(40)
    end
        def draw
        Window.draw_font(100, 100, "クリア画面", @font)
    end
end