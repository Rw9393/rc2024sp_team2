class Option
    def initialize
        @title_font = Font.new(60, "美咲明朝")
        @label_font = Font.new(24, "美咲明朝")
        @font = Font.new(40, "美咲明朝")
        @font2 = Font.new(25, "美咲明朝")
        @volume = 125
        # ボタンが押されているかどうかのフラグ
        @left_rect_clicked = false
        @center_rect_clicked = false
        @right_rect_clicked = false
        @level = Score.new
    end

    def draw_font_center(pos_y, text, font, options = {})
        pos_x = (Window.width - font.get_width(text)) / 2
        Window.draw_font(pos_x, pos_y, text, font, options)
    end

    def draw
        draw_font_center(60, "設定", @title_font, color: C_WHITE)
        Window.draw_font(80, 280, "Volume", @font)
        Window.draw_font(80, 550, "難易度", @font)

        mouse_x = Input.mouse_pos_x
        mouse_y = Input.mouse_pos_y

        # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 150 && mouse_x < (150 + 100) && #四角形のｘ座標＋横幅
        mouse_y > 430 && mouse_y < (430 + 50)       #四角形のy座標＋縦幅
          # マウスが押された場合の処理
          if Input.mouse_push?(M_LBUTTON)
            @volume -= 25
          end
        end
  
        # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 500 && mouse_x < (500 + 100) && #四角形のｘ座標＋横幅
        mouse_y > 430 && mouse_y < (430 + 50)       #四角形のy座標＋縦幅
  
          # マウスが押された場合の処理
          if Input.mouse_push?(M_LBUTTON)
            @volume += 25
          end
        end
  
        if @volume > 250
            @volume = 250
        end
  
        if @volume < 0
            @volume = 0
        end
  
        volume2 = @volume / 25
    
        BGM.set_volume(@volume, time=0)

        Window.draw_font(200, 390, "0", @font2, {color: C_WHITE})
        Window.draw_line(220, 400, 530, 400, C_WHITE)
        Window.draw_font(550, 390, "10", @font2, {color: C_WHITE})
        Window.draw_box(150, 430, 250, 480, C_WHITE)
        Window.draw_font(175, 450, "DOWN", @font2, color:C_RED)
        Window.draw_font(370, 440, volume2.to_s, @font2, {color: C_WHITE})
        Window.draw_box(500, 430, 600, 480, C_WHITE)
        Window.draw_font(540, 450, "UP", @font2, color:C_RED)

        # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 150 && mouse_x < (150 + 100) && #四角形のｘ座標＋横幅
            mouse_y > 650 && mouse_y < (650 + 50)       #四角形のy座標＋縦幅
      
        # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                @left_rect_clicked = true
                @center_rect_clicked = false
                @right_rect_clicked = false
            end
        end

      # ボタンの描画
        if @left_rect_clicked
            Window.draw_box_fill(150, 650, 250, 700, C_WHITE)
            @level.levelchanger("EASY")
        else
            Window.draw_box(150, 650, 250, 700, C_WHITE)
        end


        # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 330 && mouse_x < (330 + 100) && #四角形のｘ座標＋横幅
        mouse_y > 650 && mouse_y < (650 + 50)       #四角形のy座標＋縦幅

        # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                @center_rect_clicked = true
                @left_rect_clicked = false
                @right_rect_clicked  = false
            end
        end

      # ボタンの描画
        if @center_rect_clicked
            Window.draw_box_fill(330, 650, 430, 700, C_WHITE)
            @level.levelchanger("NORMAL")
        elsif @center_rect_clicked == false && Score.current_level == "NORMAL"
            Window.draw_box_fill(330, 650, 430, 700, C_WHITE)
        else
            Window.draw_box(330, 650, 430, 700, C_WHITE)
        end

      # マウスの座標が四角形の範囲内にあるかどうかを確認
        if mouse_x > 500 && mouse_x < (500 + 100) && #四角形のｘ座標＋横幅
            mouse_y > 650 && mouse_y < (650 + 50)       #四角形のy座標＋縦幅

            # マウスが押された場合の処理
            if Input.mouse_down?(M_LBUTTON)
                @right_rect_clicked = true
                @center_rect_clicked = false
                @left_rect_clicked  = false
            end
        end

        # ボタンの描画
        if @right_rect_clicked
            Window.draw_box_fill(500, 650, 600, 700, C_WHITE)
            @level.levelchanger("HARD")
        else
            Window.draw_box(500, 650, 600, 700, C_WHITE)
        end

        Window.draw_font(180, 670, "EASY", @font2, color:C_RED)
        Window.draw_font(350, 670, "NORMAL", @font2, color:C_RED)
        Window.draw_font(525, 670, "HARD", @font2, color:C_RED)



        SceneManager.transition(:stage1) if Input.key_push?(K_SPACE) 
        
        if Input.key_push?(K_ESCAPE)
            Manager.current_screen(:title)
        end
    end
end