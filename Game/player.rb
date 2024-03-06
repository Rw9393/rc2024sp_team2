class Player < Sprite
    @@image = Image.load("Image/player.png")
    @@image.set_color_key(C_RED)

    def initialize
        self.x = 100
        self.y = 365
        self.image = @@image
    end

    def update
        if Input.key_down?(K_UP)
            if self.y <= 55
                self.y = 50
            end
            self.y += Input.y - 4 
        elsif Input.key_down?(K_DOWN)
            if self.y >= 768
                self.y = 763
            end
            self.y += Input.y + 4
        end
        
        if Input.key_down?(K_RIGHT)
            if self.x >= 1024
                self.x = 1019
            end
            self.x += Input.x + 4 
        elsif Input.key_down?(K_LEFT)
            if self.x <= 0
                self.x = 5
            end
            self.x += Input.x - 4
        end

        #puts("#{self.x}, #{self.y}")
    end
end