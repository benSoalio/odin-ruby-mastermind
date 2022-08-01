class String
  def initialize
    puts "color created"
  end
  # colorization
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def bg_gray
    colorize(47)
  end

  def bg_green
    colorize(42)
  end

  def bg_brown
    colorize(43)
  end

  def bg_blue
    colorize(44)
  end

  def bg_magenta
    colorize(45)
  end

  def bg_red
    colorize(41)
  end

  def green
    colorize(32)
  end

  def brown
    colorize(33)
  end

end
