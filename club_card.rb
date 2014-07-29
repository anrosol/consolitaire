require_relative 'card'

class ClubCard < Card

  def initialize(num, name=nil)
    super(num, name, 'Club', "\u2663", 'Black')
  end

end
