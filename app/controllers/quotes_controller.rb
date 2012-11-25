class QuotesController < InheritedResources::Base

  def index
    @search = Quote.search(params[:search])
    @quotes = @search.all
  end
end
