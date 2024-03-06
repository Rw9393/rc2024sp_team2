class Player < Sprite
    @@image = Image.load("Image/player_test.png")
    
    def initialize
        self.x = 100
        self.y = 365
        self.image = @@image
    end

    def update
        if Input.key_down?(K_UP)
            self.y += Input.y - 4
        elsif Input.key_down?(K_DOWN)
            self.y += Input.y + 4
        end
    end
end