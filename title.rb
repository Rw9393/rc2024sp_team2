class Title
    def initialize
        @titlefont = Font.new(64)
        @menufont = Font.new(40)
    end

    def draw
        Window.draw_font(230, 150, "アニキシューティング", @titlefont)
        Window.draw_font(230, 300, "スタート : Sキー", @menufont)
        Window.draw_font(230, 350, "設定 : Aキー", @menufont)
        Window.draw_font(230, 400, "終了 : ESCキー", @menufont)
        
        if Input.key_push?(K_S)
            Manager.current_screen(:game)
        elsif Input.key_push?(K_A)
            Manager.current_screen(:option)
        elsif Input.key_push?(K_ESCAPE)
            exit
        end
    end    
end
