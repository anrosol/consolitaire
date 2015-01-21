require_relative 'card'

class HeartCard < Card

  def initialize(num, name=nil)
    super(num, name, 'Heart', "\u2665", true)
  end

end
