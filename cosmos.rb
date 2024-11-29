require 'io/console'

STARS = %w(
*
✱
✲
✳
✴
✵
✶
✷
✸
✹
✺
★
☆
★
✦
✫
✯
✯
✷
✯
✵
✯
)

WINDOW_LENGTH = IO.console.winsize.first
WINDOW_WIDTH = IO.console.winsize.last

def random_stars
  STARS.sample
end

def star_line
  left_padding = line_padding(5)
  right_padding = line_padding(5)

  stars = random_stars

  "#{left_padding} #{star_padding} #{stars} #{right_padding}" + "\n"
end

def line_padding(count)
  "\s" * count
end

def star_padding
  width = WINDOW_WIDTH - 5

  "\s" * rand(1..width)
end

def star_rows
  length = WINDOW_LENGTH - 5

  length.times { puts star_line }
end

star_rows
