# == Schema Information
#
# Table name: misfortunes
#
#  id         :integer          not null, primary key
#  misfortune :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Misfortune do
  
  before { @misfortune = Misfortune.new(misfortune: "Example misfortune") }

  subject { @misfortune }

  it { should respond_to(:misfortune) }

  it { should be_valid }

  describe "when misfortune is not present" do
  	before { @misfortune.misfortune = " " }
  	it {should_not be_valid }
  end

  describe "when misfortune is too long" do
  	before { @misfortune.misfortune = "a" * 141 }
  	it { should_not be_valid }
  end
end
