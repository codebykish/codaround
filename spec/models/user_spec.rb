require 'rails_helper'

RSpec.describe User, :type => :model do

context "db" do
    context "indexes" do
      it { should have_db_index(:email).unique(true) }
      it { should have_db_index(:confirmation_token).unique(true) }
    end
