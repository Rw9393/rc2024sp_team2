                                                                                                                                                        require 'dxruby'

require_relative 'title'
require_relative 'option'
require_relative 'manager'
require_relative 'game'
require_relative 'gameover'
require_relative 'clear'
require_relative 'Game/timer'
require_relative 'Game/player'
require_relative 'Game/player_bullets'
require_relative 'Game/normal_enemy'
require_relative 'Game/gun_enemy'
require_relative 'Game/enemy_bullets'
require_relative 'Game/score'
require_relative 'Game/life'

Window.width = 1024
Window.height = 768
Window.scale = 1

BGM = Sound.new("Sound/3rd-Protoype.wav")

Manager.load_screen(:title, Title.new)
Manager.load_screen(:game, Game.new)
Manager.load_screen(:option, Option.new)
Manager.load_screen(:gameover, Gameover.new)
Manager.load_screen(:clear, Clear.new)
Manager.current_screen(:title)

Window.loop do
    Manager.view
end
