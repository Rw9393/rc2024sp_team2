class Manager
    @@screens = {}
    @@screens_current = nil

    def self.load_screen(screen_name, scene)
        @@screens[screen_name] = scene
    end

    def self.current_screen(screen_name)
        @@screens_current = screen_name
    end

    def self.view
        if @@screens.has_key?(@@screens_current)
            @@screens[@@screens_current].draw
        else
        end
    end
end