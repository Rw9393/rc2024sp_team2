class Clear
    def initialize
        @titlefont = Font.new(64, "美咲明朝")
        @menufont = Font.new(35, "美咲明朝")
        @gc_image = Image.load("image/clear2.png")
    end

    def draw
        Window.draw_font(400, 110, "CLEAR", @titlefont)
        @gc_image.set_color_key(C_RED)
        Window.draw(350, 200, @gc_image)
        Window.draw_font(430, 610, "continue", @menufont)
        Window.draw_font(460, 690, "終了", @menufont)
        

        mouse_x = Input.mouse_pos_x
        mouse_y = Input.mouse_pos_y


        # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 350 && mouse_x < (350 + 300) && #四角形のｘ座標＋横幅
           mouse_y > 600 && mouse_y < (600 + 50)       #四角形のy座標＋縦幅

            # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                Manager.current_screen(:title)
            else
                Window.draw_box(350, 600, 650, 650, C_WHITE)
            end
        end


      # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 350 && mouse_x < (350 + 300) && #四角形のｘ座標＋横幅
            mouse_y > 680 && mouse_y < (680 + 50)       #四角形のy座標＋縦幅

            # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                exit
            else
                Window.draw_box(350, 680, 650, 730, C_WHITE)
           
            end
        end

    end    
end