class Gun_enemy < Sprite
    @@image1 = Image.load("Image/gunenemy.png")
    @@image2 = Image.load("Image/gunenemy2.png")
    @@image1.set_color_key(C_RED)
    @@image2.set_color_key(C_RED)

    def initialize(x,y)
        self.x = x
        self.y = y
        self.image = @@image1
        @frame = 0    
        @SPEED = 1
    end

    def animation
        if @frame <= 15
            self.image = @@image2
        else
            self.image = @@image1
        end
    end

    def update
        if @frame <= 30
            @frame += 1
        else
            @frame = 0
        end

        self.x -= 1 * @SPEED
        if self.x <= -105
            self.x = 910
        end

        animation
    end
end

#進む→ランダムのタイミングで一回止まる進む