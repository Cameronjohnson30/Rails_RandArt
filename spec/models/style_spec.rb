require 'rails_helper'

describe Style do 
it { should have_many(:categories) }
it { should  validate_presence_of :name }
end