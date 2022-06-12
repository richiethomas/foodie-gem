require 'thor'
require 'richie-foodie'
require 'richie-foodie/generators/recipe'

module RichieFoodie
  class CLI < Thor

    desc "portray ITEM", "Determines if a piece of food is gross or delicious"
    def portray(name)
      puts RichieFoodie::Food.portray(name)
    end

    desc "pluralize", "Pluralizes a word."
    method_option :word, aliases: "-w"
    def pluralize
      puts RichieFoodie::Food.pluralize(options[:word])
    end

    desc "recipe", "Generates a recipe scaffold"
    def recipe(group, name)
      RichieFoodie::Generators::Recipe.start([group, name])
    end
  end
end