class QuotesController < InheritedResources::Base

  def index
    @search = Quote.search(params[:search])
    @quotes = @search.order("created_at desc")
  end
end
