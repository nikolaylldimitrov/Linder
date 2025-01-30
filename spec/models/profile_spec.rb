require 'rails_helper'

RSpec.describe "test Profile model",type: :model do 
  describe "Validations" do
    let(:user){ User.create(email_address: "jhon@example.com", password: "qwerty")}
    context "Profiles matching validations" do
      let(:profile){ Profile.new(user_id: user.id, matching_gender:"f")}
      it "validates gender with invalid value" do 
        profile.gender ='they'
        expect(profile.valid?).to be_falsey
      end
      it "validates gender with m" do 
        profile.gender ="m"
        expect(profile.valid?).to be_truthy
      end
    end
    context "Profiles matching gender validations" do
      let(:profile){ Profile.new(user_id: user.id, gender:"f")}
      it "validates gender with invalid value" do 
        profile.matching_gender ='they'
        expect(profile.valid?).to be_falsey
      end
      it "validates gender with m" do 
        profile.matching_gender ="m"
        expect(profile.valid?).to be_truthy
      end
    end
  end
end