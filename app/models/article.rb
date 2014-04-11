module Enumerable 
  def every_n_with_index(start,step)
    self.each_with_index do |elt,index|
      yield elt,index if index >= start && (index-start) % step == 0
    end
  end
end
class Article < ActiveRecord::Base
  include Bootsy::Container
end
