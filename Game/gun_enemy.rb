class Gun_enemy < Sprite
    @@image1 = Image.load("Image/gunenemy.png")
    @@image2 = Image.load("Image/gunenemy2.png")
    @@image1.set_color_key(C_RED)
    @@image2.set_color_key(C_RED)

    def initialize
        self.x = 919
        self.y = 365
        self.image = @@image1
        @frame = 0    
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

        animation
    end
end