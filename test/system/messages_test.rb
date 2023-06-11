require "application_system_test_case"

class MessagesTest < ApplicationSystemTestCase
  setup do
    @message = create(:message)
  end

  test "visiting the index" do
    visit messages_url

    assert_selector "h1", text: "Messages"
  end

  test "should create message" do
    visit messages_url
    click_on "New message"

    assert_selector "h1", text: "New message"

    fill_in "Email", with: Faker::Internet.email
    fill_in "Message", with: Faker::Lorem.paragraph(sentence_count: 3)
    fill_in "Name", with: Faker::Internet.username(specifier: 5..8)
    fill_in "Subject", with: Faker::Lorem.sentence(word_count: 3)
    fill_in "Url", with: Faker::Internet.url
    click_on "Create Message"

    assert_text "Message was successfully created"
    click_on "Back"
  end

  test "should navigate back to index when canceling creation" do
    visit messages_url
    click_on "New message"

    assert_selector "h1", text: "New message"

    click_on "Back to messages"

    assert_selector "h1", text: "Messages"
  end

  test "should update Message" do
    visit message_url(@message)
    click_on "Edit this message", match: :first

    fill_in "Email", with: @message.email
    fill_in "Message", with: @message.message
    fill_in "Name", with: @message.name
    fill_in "Subject", with: @message.subject
    fill_in "Url", with: @message.url
    click_on "Update Message"

    assert_text "Message was successfully updated"
    click_on "Back"
  end

  test "should destroy Message" do
    visit message_url(@message)
    click_on "Destroy this message", match: :first

    assert_text "Message was successfully destroyed"
  end
end
