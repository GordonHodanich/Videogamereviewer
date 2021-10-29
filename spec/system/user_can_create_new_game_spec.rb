require "rails_helper"

describe "when a user visits the home page", type: :system do
  it "they can create a new game using the add new game button" do
    
    log_in_as_user

    visit "/"

    click_on "Add New Game"

    fill_in "Title", with: "test"
    fill_in "Description", with: "this is a test"
    fill_in "Rating", with: 5
    fill_in "Photo Url", with: "https://i.imgur.com/kYykXgsb.jpg"

    click_on "Create Game"

    expect(page).to have_content "test"
    expect(current_path).to eq game_path(Game.last)  end

  def create_user
    user = User.create!(
      name: "Bobby",
      email: "bobby@bobby.com",
      password: "password"
    )
  end

  def log_in_as_user
    user = create_user
    sign_in user
  end

end
