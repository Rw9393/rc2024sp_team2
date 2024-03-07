class Gun_enemy < Sprite
    @@image1 = Image.load("Image/gunenemy.png")
    @@image2 = Image.load("Image/gunenemy2.png")
    @@image1.set_color_key(C_RED)
    @@image2.set_color_key(C_RED)

    attr_reader :bullets
    STOP_MAX = 50 * rand(3)

    def initialize(x,y)
        self.x = x
        self.y = y
        self.image = @@image1
        @frame = 0
        @current_frame = 0
        @gun_frame = nil
        @SPEED = 1
        @stop_flag = false
        @stop_counter = 0
        @bullets = []
    end

    def hit(obj)
        vanish
    end

    def shoot
        @bullets = Enemy_bullets.new(self.x, self.y)
    end

    def nilguard
        if @gun_frame != nil
            return true
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

        @current_frame += 1

        self.x  -= @SPEED

        if self.x <= -105
             self.x = 910
        end

        if self.x % 100 == 0 && @stop_flag == false
            @gun_frame = @current_frame + 15
            @stop_flag = true
        end

        if nilguard && @gun_frame >= @current_frame
            shoot
        end

        if @stop_flag
            self.x += @SPEED
            #@bullets << Enemy_bullets.new(self.x, self.y)
            @stop_counter += 1
            if @stop_counter == STOP_MAX
                @stop_flag = false
                self.x -= 2
                @stop_counter = 0
            end
        end

        #@bullets << Enemy_bullets.new(self.x, self.y)

        Sprite.update(@bullets)
        Sprite.draw(@bullets)
        animation
    end

end