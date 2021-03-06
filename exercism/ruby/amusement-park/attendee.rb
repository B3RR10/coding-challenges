class Attendee
  def initialize(height)
    @height = height
  end

  attr_reader :height, :pass_id

  def issue_pass!(_pass_id)
    @pass_id = _pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end
