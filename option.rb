class Option
    def initialize
        @bg_image = Image.load("image/stage.png")
        @title_font = Font.new(60)
        @label_font = Font.new(24)
        @font = Font.new(32)
        @font2 = Font.new(20)
        # ボタンが押されているかどうかのフラグ
        @left_rect_clicked = false
        @center_rect_clicked = false
        @right_rect_clicked = false
    end

    def draw_font_center(pos_y, text, font, options = {})
        pos_x = (Window.width - font.get_width(text)) / 2
        Window.draw_font(pos_x, pos_y, text, font, options)
    end

    def draw
        Window.draw(0, 0, @bg_image)
        draw_font_center(60, "設定", @title_font, color: C_BLACK)
        Window.draw_font(80, 340, "Volume", @font)
        Window.draw_font(80, 550, "難易度", @font)

        mouse_x = Input.mouse_pos_x
        mouse_y = Input.mouse_pos_y

        # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 150 && mouse_x < (150 + 100) && #四角形のｘ座標＋横幅
            mouse_y > 450 && mouse_y < (450 + 50)       #四角形のy座標＋縦幅
      
        # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                @left_rect_clicked = true
                @center_rect_clicked = false
                @right_rect_clicked = false
            end
        end

      # ボタンの描画
        if @left_rect_clicked
            Window.draw_box_fill(150, 450, 250, 500, C_WHITE)
        else
            Window.draw_box(150, 450, 250, 500, C_WHITE)
        end


        # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 330 && mouse_x < (330 + 100) && #四角形のｘ座標＋横幅
        mouse_y > 450 && mouse_y < (450 + 50)       #四角形のy座標＋縦幅

        # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                @center_rect_clicked = true
                @left_rect_clicked = false
                @right_rect_clicked  = false
            end
        end

      # ボタンの描画
        if @center_rect_clicked
            Window.draw_box_fill(330, 450, 430, 500, C_WHITE)
        else
            Window.draw_box(330, 450, 430, 500, C_WHITE)
        end

      # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 500 && mouse_x < (500 + 100) && #四角形のｘ座標＋横幅
            mouse_y > 450 && mouse_y < (450 + 50)       #四角形のy座標＋縦幅

            # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                @right_rect_clicked = true
                @center_rect_clicked = false
                @left_rect_clicked  = false
            end
        end

        # ボタンの描画
        if @right_rect_clicked
            Window.draw_box_fill(500, 450, 600, 500, C_WHITE)
        else
            Window.draw_box(500, 450, 600, 500, C_WHITE)
        end

        Window.draw_font(180, 470, "EASY", @font2, color:C_BLACK)
        Window.draw_font(350, 470, "NOMAL", @font2, color:C_BLACK)
        Window.draw_font(525, 470, "HARD", @font2, color:C_BLACK)



        SceneManager.transition(:stage1) if Input.key_push?(K_SPACE) 
        
        if Input.key_push?(K_ESCAPE)
            Manager.current_screen(:title)
        end
    end
end