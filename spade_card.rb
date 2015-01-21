require_relative 'card'

class SpadeCard < Card

  def initialize(num, name=nil)
    super(num, name, 'Spade', "\u2660", false)
  end

end
