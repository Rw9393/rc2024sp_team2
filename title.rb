class Title
    def initialize
        @titlefont = Font.new(64)
        @menufont = Font.new(40)
    end

    def draw
        Window.draw_font(230, 150, "アニキシューティング", @titlefont)
        Window.draw_font(430, 320, "スタート", @menufont)
        Window.draw_font(450, 420, "設定", @menufont)
        Window.draw_font(450, 520, "終了", @menufont)
        

        mouse_x = Input.mouse_pos_x
        mouse_y = Input.mouse_pos_y

        # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 350 && mouse_x < (350 + 300) && #四角形のｘ座標＋横幅
            mouse_y > 300 && mouse_y < (300 + 80)       #四角形のy座標＋縦幅
      
            # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                Manager.current_screen(:game)
            else
                Window.draw_box(350, 300, 650, 380, C_WHITE)
            end
        end


        # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 350 && mouse_x < (350 + 300) && #四角形のｘ座標＋横幅
        mouse_y > 400 && mouse_y < (400 + 80)       #四角形のy座標＋縦幅

            # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                Manager.current_screen(:option)
            else
                Window.draw_box(350, 400, 650, 480, C_WHITE)
            end
        end


      # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 350 && mouse_x < (350 + 300) && #四角形のｘ座標＋横幅
            mouse_y > 500 && mouse_y < (500 + 80)       #四角形のy座標＋縦幅

            # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                exit
            else
                Window.draw_box(350, 500, 650, 580, C_WHITE)
            end
        end

    end    
end
