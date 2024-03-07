class Game
    def initialize
        @characters = [Player.new, Normal_enemy.new, Gun_enemy.new]
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
    end
end