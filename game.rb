class Game
    def initialize
        @characters = Player.new
    end
    def draw
        @characters.update
        @characters.draw
        
        if Input.key_push?(K_ESCAPE)
            Manager.current_screen(:title)
        end
    end
end