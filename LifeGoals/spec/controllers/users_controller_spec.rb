require 'rails_helper'

RSpec.describe UsersController, type: :controller do



  describe 'POST #create' do
    context "with valid params" do

      # it "redirects to goal comments index" do
        post :create, user: {username: "Rick Sanchez", password: "password"}
        it { should redirect_to(goalcomments_url) }
      # end
    end

    context "with invalid params" do
      it "checks the minimum length of password to be 6" do
        post :create, user: { username: "Rick Sanchez", password: "pass"}
        expect(flash[:errors]).to be_present
      end
    end
  end

end
