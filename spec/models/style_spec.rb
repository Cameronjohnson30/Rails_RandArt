require 'rails_helper'

describe Style do 
it { should have_many(:categories) }
end