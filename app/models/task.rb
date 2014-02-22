class Task < ActiveRecord::Base
  def done!
    self.done = true
  end
end
