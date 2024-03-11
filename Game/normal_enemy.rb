class Normal_enemy < Sprite
    @@image1 = Image.load("Image/normal_enemy.png")
    @@image2 = Image.load("Image/normal_enemy2.png")
    @@image3 = Image.load("Image/normal_enemy3_kari.png")
    @@image1.set_color_key(C_RED)
    @@image2.set_color_key(C_RED)
    @@image3.set_color_key(C_RED)


    def initialize (x,y)
        self.x = x
        self.y = y
        @SPEED = 2
        self.image = @@image1
        @frame = 0
        @wait_frame = 0
        @score = Score.new
        @shot = false
    end

    def hit(obj)
        @score.add(100)
        vanish
    end

    def shot(obj)
        if @wait_frame <= 300
            @wait_frame += 1
            @shot = true
            self.image = @@image3
        else
            @wait_frame = 0
            @shot = false
        end
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

        if @shot == false && Player.hit_check == false
            self.x -= 1 * @SPEED
            if self.x <= -105
                self.x = 919
            end
            animation
        end
    end
end
