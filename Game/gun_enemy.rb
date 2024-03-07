class Gun_enemy < Sprite
    @@image1 = Image.load("Image/gunenemy.png")
    @@image2 = Image.load("Image/gunenemy2.png")
    @@image1.set_color_key(C_RED)
    @@image2.set_color_key(C_RED)
    STOP_MAX = 50 * rand(3)

    def initialize(x,y)
        self.x = x
        self.y = y
        self.image = @@image1
        @frame = 0    
        @SPEED = 1
        @stop_flag = false
        @stop_counter = 0
    end

    def hit(obj)
        vanish
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

        self.x  -= @SPEED

        if self.x <= -105
             self.x = 910
        end

        @stop_flag = true if self.x % 100 == 0

        if @stop_flag
            self.x += @SPEED
            @stop_flag = false
            @stop_counter += 1
            if @stop_counter == STOP_MAX
                self.x -= 2
                @stop_counter = 0
            end
        end
        
        animation
    end

end