# frozen_string_literal: true
require 'spec_helper'

RSpec.describe RichieFoodie::Food do
  it "broccoli is gross" do
    expect(RichieFoodie::Food.portray("Broccoli")).to eql("Gross!")
  end
  it "anything else is delicious" do
    expect(RichieFoodie::Food.portray("Not Broccoli")).to eql("Delicious!")
  end

  it 'pluralizes a word' do
    expect(RichieFoodie::Food.pluralize('Tomato')).to eql('Tomatoes')
  end
end
