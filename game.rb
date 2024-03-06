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
        end
    end
end