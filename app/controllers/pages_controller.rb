class PagesController < ApplicationController

  def show
    if valid_page?
      render template: "pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end


  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    # Create the new page with the parameters
    @page = Page.new(page_params)

    # Save the new page
    @page.save
    # Redirect browser to the new-page view
    redirect_to @page
  end


  def edit
  end


  def update
    # Updated the edited page with the new parameters (the "update" method is saving the updated object to database too)
    @page.update(page_params)
    redirect_to @page
  end


  def destroy
    @page.destroy
    redirect_to pages_path
  end

=begin
  def static
    render template: "pages/#{params[:page]}"
  end
=end



# Methods who should be used only on this page
  private
    # Page parameters method (set what parameters is required to Add and Edit pages)

    def valid_page?
        File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
    end

    def page_params
      @page_params = params.require(:page).permit(:title, :body, :slug)
    end



end
