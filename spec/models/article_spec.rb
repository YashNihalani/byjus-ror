require 'rails_helper'

RSpec.describe Article, type: :model do

 it "is not valid without a title" do
    subject=(Article.new(title: "", body: "xxxxxxxxxxxxxx", status: "public" )).save
    expect(subject).to eq(false)
  end

  it "is not valid without a body" do
    subject=(Article.new(title: "xxxxxxxxxxxxxx", body: "" , status: "public" )).save
    expect(subject).to eq(false)
  end
  
    it "is not valid without a status" do
    subject=(Article.new(title: "xxxxxxxxxxxxxx", body: "xxxxxxxxxxxxx" , status: "" )).save
    expect(subject).to eq(false)
  end
  # it { should validate_length_of(:body).is_at_least(10) }

  it "is valid with valid attributes" do
    subject=Article.new(title: "xxxxxxxxxxxx", body: "xxxxxxxxxxxxxx",  status: "public" ).save!
    expect(subject).to eq(true)
  end

end
