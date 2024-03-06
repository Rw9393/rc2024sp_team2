class Game
    def initialize
        @characters = [Player.new, Normal_enemy.new]
        @image = Image.load("image/stage.png")
    end

    def draw
        Window.draw(0, 0, @image)
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