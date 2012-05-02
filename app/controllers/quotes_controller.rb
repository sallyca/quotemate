class QuotesController < InheritedResources::Base

  def index
    @quotes = Quote.search(params[:search])
  end
end
