
require 'curses'

class Output
  INVISIBLE_CURSOR = 0

  def initialize(window)
    @window = window
  end

  def print_at(text, x, y)
    @window.setpos(x, y)
    @window.addstr(text.to_s)
    @window.refresh
  end

  def paint(node)
    @window.setpos(node.y, node.x)
    @window.addstr(node.symbol)
    @window.refresh
  end

  def self.init
    Curses.init_screen()
    Curses.cbreak()
    Curses.noecho
    Curses.curs_set(INVISIBLE_CURSOR)
  end

  def self.close
    Curses.close_screen
  end
end
