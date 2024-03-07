class Game
    def initialize
        @count_normal = 0
        @count_gun = 0
        @player = Player.new
        @gun_enemy = Gun_enemy.new(900, 150)
        @enemy = [Normal_enemy.new(919, 300), @gun_enemy]
        #@characters = [Player.new, Normal_enemy.new(919,300), Gun_enemy.new(900,150)]
        @image = Image.load("image/stage.png")
        @timer = Timer.new
        BGM.play
    end

    def draw
        Window.draw(0, 0, @image)
        @timer.update
        Sprite.update([@player] + @enemy)
        Sprite.draw([@player] + @enemy)
        Sprite.check(@player.bullets, @enemy)
        #@enemy.delete_if{|enemy| enemy.vanished?}
        Sprite.check(@gun_enemy.bullets, @player)

        @enemy.each do |enemy|
            if enemy.is_a?(Gun_enemy)
              Sprite.check(enemy.bullets, @player)
            end
          end
=begin        
        @enemy.each do |e|
            if e.vanished?
                @enemy.delete(e)
            end
        end 
=end

        @count_normal += 1
        @count_gun += 1
        if @count_normal == 180
            @enemy  << Normal_enemy.new(919, rand(569) + 55)
        elsif @count_normal > 180
            @count_normal = 0
        end

        if @count_gun == 300
            @enemy << Gun_enemy.new(919,400)
        elsif @count_gun > 300
            @count_gun = 0
        end

        if Input.key_push?(K_ESCAPE)
            Manager.current_screen(:title)
        elsif Input.key_push?(K_C)
            Manager.current_screen(:clear)
        end
    end
end