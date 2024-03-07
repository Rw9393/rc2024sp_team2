class Option
    def initialize
        @menufont = Font.new(40)
    end

    def draw
        Window.draw_font(230, 300, "設定画面", @menufont) 
        
        if Input.key_push?(K_ESCAPE)
            Manager.current_screen(:title)
        end
    end
end