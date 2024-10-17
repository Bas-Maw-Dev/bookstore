require 'rails_helper'
RSpec.describe 'Book' do
  context 'context' do
    before do
      book = Book.create(title: 'The Lord of the Rings', author: 'Tolkien')
      visit books_path
    end
    it 'display a list books with the title and author' do
      expect(page).to have_text('The Lord of the Rings')
      expect(page).to have_text('Tolkien')
      expect(page).to have_link('New Book')
    end
  end
end
