class Bar

attr_reader :till

  def initialize(till)
    @till = till
    @drinks = Hash.new(0)
  end




end
