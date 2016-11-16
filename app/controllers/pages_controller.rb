class PagesController < ApplicationController

  before_action :get_single_page, only: [:show, :edit, :update, :destroy]


  def index
    @pages = Page.all
  end


  def show

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

  def homepage

  end

  def about

  end

# Methods who should be used only on this page
  private
    # Page parameters method (set what parameters is required to Add and Edit pages)

    def page_params
      @page_params = params.require(:page).permit(:title, :body, :slug)
    end

    def get_single_page
      @page = Page.find(params[:id])
    end




end
