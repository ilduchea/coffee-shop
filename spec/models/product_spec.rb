require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should have_many :reviews }

  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :origin }
  it { should validate_presence_of :description }
end
