require 'rails_helper'

RSpec.describe "contestant index page", type: :feature do
  before :each do
    @contestant = Contestant.create(name: "test name",
                                  project_id: "10")


    @project = Project.create(name: "Test name",
                              material: "newspaper")

    visit "/contestants/#{@contestant.index}"
  end

  it "can see contestant project name and projects" do
    expect(page).to have_content(@contestant.name)
    expect(page).to have_content(@contestant.project_id)
  end

end
