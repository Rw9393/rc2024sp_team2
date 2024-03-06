class Player < Sprite
    @@image = Image.load("Image/player_test.png")
    
    def initialize
        self.x = 100
        self.y = 365
        self.image = @@image
    end

    def update
        if Input.key_down?(K_UP)
            if self.y <= 0
                self.y = 1
            end
            self.y += Input.y - 4 
        elsif Input.key_down?(K_DOWN)
            if self.y >= 768
                self.y = 767
            end
            self.y += Input.y + 4
        end
        puts(self.y)
    end
end