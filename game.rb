class Game
    def initialize
        @characters = Player.new
        @image = Image.load("image/stage.png")
    end

    def draw
        Window.draw(0, 0, @image)
        @characters.update
        @characters.draw
        
        if Input.key_push?(K_ESCAPE)
            Manager.current_screen(:title)
        elsif Input.key_push?(K_O)
            Manager.current_screen(:gameover)
        elsif Input.key_push?(K_C)
            Manager.current_screen(:clear)
        end
    end
end