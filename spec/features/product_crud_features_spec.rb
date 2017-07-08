require 'rails_helper'
require 'faker'

describe "the product crud process" do
  admin = FactoryGirl.create(:admin)
  product = FactoryGirl.create(:product, name: 'Steak')

  it "allows an admin to create a new product" do
    visit signin_path
    fill_in :email, with: admin.email
    fill_in :password, with: admin.password
    click_button 'Sign in'
    click_link "New Product"
    fill_in "Product's Name", with: "Steak"
    fill_in "Product's Cost", with: "18"
    fill_in "Product's Country of Origin", with: "USA"
    fill_in "Product Description", with: Faker::Coffee.notes
    click_button "Create Product"
    expect(page).to have_content "Steak"
  end

  it "allows an admin to edit a product" do
    visit signin_path
    fill_in :email, with: admin.email
    fill_in :password, with: admin.password
    click_button 'Sign in'
    visit product_path(product)
    click_link "Edit"
    fill_in "Product's Name", with: "Prime Rib"
    click_button "Update Product"
    expect(page).to have_content "Prime Rib"
  end

  it "allows the user to delete a product" do
    visit signin_path
    fill_in :email, with: admin.email
    fill_in :password, with: admin.password
    click_button 'Sign in'
    visit product_path(product)
    click_link "Delete"
    expect(page).to have_no_content "Steak"
  end

end
