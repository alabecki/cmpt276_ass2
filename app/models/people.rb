class People < ActiveRecord::Base
    
   validates :height, numericality: { only_integer: true }
   validates :weight, numericality: { only_integer: true }
end
