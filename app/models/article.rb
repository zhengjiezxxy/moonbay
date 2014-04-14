module Enumerable 
  def every_n_with_index(start,step)
    self.each_with_index do |elt,index|
      yield elt,index if index >= start && (index-start) % step == 0
    end
  end
end
class Article < ActiveRecord::Base
  validate :title, :arthor ,:body ,:rate, presence: true

  before_create do
    if self.nil?  
      self.title = "error"
      self.arthor = "error"
      self.rate = "error"
      self.body ="error"
    end
  end
end
