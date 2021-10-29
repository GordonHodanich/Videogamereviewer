require "rails_helper"


describe "when a user visited the games index page", type: :system do
  it "they can see a list of all the games" do
    game = create_game
    another_game = another_create_game
    log_in_as_user

    visit games_path

    expect(page).to have_content "Test Game"
    expect(page).to have_content another_game.title
  end

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

  def create_game
    game = Game.create!(
      title: "Test Game",
      description: "Test Description",
      rank: 4,
      photo: "https://i.imgur.com/kYykXgsb.jpg"
    )
  end

  def another_create_game
    game = Game.create!(
      title: "Test Another Game",
      description: "Test Another Description",
      rank: 3,
      photo: "https://i.imgur.com/kYykXgsb.jpg"
    )
  end
end