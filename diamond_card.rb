require_relative 'card'

class DiamondCard < Card

  def initialize(num, name=nil)
    super(num, name, 'Diamond', "\u2666", true)
  end

end
