require 'rails_helper'

describe Comment do
  it { should validate_presence_of :author }
  it { should validate_presence_of :body }
  it { should validate_presence_of :created_at  }
  it { should belong_to :post }
end
