require 'spec_helper'

RSpec.describe "TodoLists", type: :request do
  describe "GET /todo_lists" do
    it "works! (now write some real specs)" do
      get todo_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
