class Title
    def initialize
        @titlefont = Font.new(64)
        @menufont = Font.new(40)
        @title_image = Image.load("image/title2.png")
        @title2_image = Image.load("image/title_left_enemy2.png")
        @title3_image = Image.load("image/title_right_enemy2.png")
    end

    def draw
        Window.draw(170, 10, @title_image)
        Window.draw_font(430, 420, "スタート", @menufont)
        Window.draw_font(450, 520, "設定", @menufont)
        Window.draw_font(450, 620, "終了", @menufont)
        @title2_image.set_color_key(C_RED)
        Window.draw(100,425,@title2_image)
        @title3_image.set_color_key(C_RED)
        Window.draw(750,400,@title3_image)
        

        mouse_x = Input.mouse_pos_x
        mouse_y = Input.mouse_pos_y


        # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 350 && mouse_x < (350 + 300) && #四角形のｘ座標＋横幅
            mouse_y > 400 && mouse_y < (400 + 80)       #四角形のy座標＋縦幅
      
            # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                Manager.current_screen(:game)
            else
                Window.draw_box(350, 400, 650, 480, C_WHITE)
            end
        end


        # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 350 && mouse_x < (350 + 300) && #四角形のｘ座標＋横幅
        mouse_y > 500 && mouse_y < (500 + 80)       #四角形のy座標＋縦幅

            # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                Manager.current_screen(:option)
            else
                Window.draw_box(350, 500, 650, 580, C_WHITE)
            end
        end


      # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 350 && mouse_x < (350 + 300) && #四角形のｘ座標＋横幅
            mouse_y > 600 && mouse_y < (600 + 80)       #四角形のy座標＋縦幅

            # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                exit
            else
                Window.draw_box(350, 600, 650, 680, C_WHITE)
            end
        end

    end    
end
