require 'rails_helper'
RSpec.describe 'Book' do
  context 'context' do
    before do
      book = Book.create(title:"The Lord of the Rings", author: "Tolkien")
      visit books_path
      click_link("New Book")
    end
    it 'displays page to create new book' do
      expect(page).to have_field('title')
      expect(page).to have_field("author")
    end
  end
end