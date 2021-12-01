require "application_system_test_case"

class ContatosTest < ApplicationSystemTestCase
  setup do
    @contato = contatos(:one)
  end

  test "visiting the index" do
    visit contatos_url
    assert_selector "h1", text: "Contatos"
  end

  test "creating a Contato" do
    visit contatos_url
    click_on "New Contato"

    fill_in "Email", with: @contato.email
    fill_in "First name", with: @contato.first_name
    fill_in "Last name", with: @contato.last_name
    fill_in "Phone", with: @contato.phone
    click_on "Create Contato"

    assert_text "Contato was successfully created"
    click_on "Back"
  end

  test "updating a Contato" do
    visit contatos_url
    click_on "Edit", match: :first

    fill_in "Email", with: @contato.email
    fill_in "First name", with: @contato.first_name
    fill_in "Last name", with: @contato.last_name
    fill_in "Phone", with: @contato.phone
    click_on "Update Contato"

    assert_text "Contato was successfully updated"
    click_on "Back"
  end

  test "destroying a Contato" do
    visit contatos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contato was successfully destroyed"
  end
end
