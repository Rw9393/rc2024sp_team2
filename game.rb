class Game
    def initialize
        @count = 0
        @characters = [Player.new, Normal_enemy.new(919,300), Gun_enemy.new(900,150)]
        @image = Image.load("image/stage.png")
        @timer = Timer.new
    end

    def draw
        Window.draw(0, 0, @image)
        @timer.update
        Sprite.update(@characters)
        Sprite.draw(@characters)
        
        if Input.key_push?(K_ESCAPE)
            Manager.current_screen(:title)
        elsif Input.key_push?(K_O)
            Manager.current_screen(:gameover)
        elsif Input.key_push?(K_C)
            Manager.current_screen(:clear)
        end
        @count += 1
        if @count == 180
            @characters  << Normal_enemy.new(919,600)
        elsif @count == 300
            @characters  << Gun_enemy.new(919,400)
        end

    end
end