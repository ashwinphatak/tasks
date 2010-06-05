class Task < ActiveRecord::Base
  acts_as_tree
  
  def get_state
    if !self.req
      return "req"
    end
    
    return ""
  end
end
