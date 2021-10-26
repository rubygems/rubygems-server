require 'rubygems/command_manager'
require_relative 'rubygems/commands/server_command'

Gem::CommandManager.instance.register_command :server
