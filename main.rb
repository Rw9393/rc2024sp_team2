require 'dxruby'

require_relative 'title'
require_relative 'option' 
require_relative 'manager'
require_relative 'game'
require_relative 'Game/player.rb'

Window.width = 1024
Window.height = 768
Window.scale = 1

Manager.load_screen(:title, Title.new)
Manager.load_screen(:game, Game.new)
Manager.load_screen(:option, Option.new)
Manager.current_screen(:title)

Window.loop do
    Manager.view
end
