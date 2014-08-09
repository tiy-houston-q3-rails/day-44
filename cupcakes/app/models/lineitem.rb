class Lineitem < ActiveRecord::Base
  belongs_to :order
  belongs_to :cupcake
end
