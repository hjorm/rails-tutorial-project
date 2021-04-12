require 'rails_helper'

RSpec.describe AdCategory, type: :model do
  it do
    should have_db_column(:name).of_type(:string)
  end  
end
