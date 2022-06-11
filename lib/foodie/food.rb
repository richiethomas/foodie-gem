require 'active_support/inflector'

module Foodie
  class Food

    def self.pluralize(word)
      word.pluralize
    end

    def self.portray(food)
      if food.downcase == "broccoli"
        "Gross!"
      else
        "Delicious!"
      end
    end
  end
end