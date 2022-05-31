class PagesController < ApplicationController
  def home
    @time = Date.today
  end

  def about
  end

  def contact
    search = params[:member]
    @members = ['Ben', 'Rebecca', 'Alex', 'Katherine', 'Celine', 'Lucien']

    if search.present?
      @members = @members.select { |name| name.downcase == search.downcase }
    end


  end
end
