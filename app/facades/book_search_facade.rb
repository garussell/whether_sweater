# frozen_string_literal: true

class BookSearchFacade
  def initialize(params)
    @location = params[:location]
    @quantity = params[:quantity]
    @units = params[:units]
  end

  def get_books
    data = LibraryService.get_books(@location, @quantity)
    BookSearch.new(@location, data, @units)
  end
end