require 'rails_helper'

RSpec.describe "project show page", type: :feature do
  before :each do
    @challenge = Challenge.create(theme: "test theme",
                                  project_budget: "10")


    @project = Project.create(name: "Test name",
                              material: "newspaper",
                              challenge_id: @challenge.id)

    visit "/projects/#{@project.id}"
  end

  it "can see projects name and materials" do
    expect(page).to have_content(@project.name)
    expect(page).to have_content(@project.material)
  end

  it "can see the theme of the challenge that this project belongs to" do
    expect(page).to have_content(@project.challenge.theme)
  end
end
