require 'dxruby'

Window.width = 1024
Window.height = 768
Window.scale = 1
font = Font.new(32)
=begin
class Title
    def initialize
        self.screen          
    end

    def screen
        Window.draw_font(100, 100, "タイトル", font)
    end
end
=end
Window.loop do
    Window.draw_font(512, 384, "タイトル", font)
end