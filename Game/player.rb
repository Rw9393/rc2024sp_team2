class Player < Sprite
    @@image1 = Image.load("Image/player.png")
    @@image2 = Image.load("Image/player2.png")
    @@image1.set_color_key(C_RED)
    @@image2.set_color_key(C_RED)

    def initialize
        self.x = 100
        self.y = 365
        self.image = @@image1
        @f = 0
    end

    def animation(key)
        if Input.key_down?(key) == true 
            if @f <= 15
                self.image = @@image2
            else
                self.image = @@image1
            end
        end 
    end

    def update
        if @f <= 30
            @f += 1
        else
            @f = 0
        end
        if Input.key_down?(K_UP)
            if self.y <= 55
                self.y = 50
            end
            self.y += Input.y - 4
            animation(K_UP)
        elsif Input.key_down?(K_DOWN)
            if self.y >= 668
                self.y = 663
            end
            self.y += Input.y + 4
        end
        
        if Input.key_down?(K_RIGHT)
            if self.x >= 920
                self.x = 915
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