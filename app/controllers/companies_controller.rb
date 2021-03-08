class CompaniesController < ApplicationController
  before_action :find_company, only: [:show, :edit]

  def index
    @companies = Company.all
    render json: @companies
  end

  def show
    @company = Company.find(params[:id])
    if @company
      render json: {
        company: @company
      }
    else render json: {
      status: 500, 
      info: ["company not found"]
    }
    end
  end

  def new 
    @company = Company.create
  end

  def create
    @company = Company.create(company_params)
    if @company.save
      render json: {
        company: @company,
        errors: false
      }
    else
      render json: {
        errors:true, 
        info: ["company cannot be created"]
      }
    end
  end

  def edit
  end

  def update
    @company = Company.find(params[:id])
    if @company
      @company.update(company_params)
      render json: {
        company: @company, 
        errors: false
      }
    else
      render json: {
        errors: true, 
        info: ["company cannot be updated"]
      }
    end
  end

  def destroy 
    @company = find_company
    if @company.destroy
      render json: {
        company: @company, 
        errors: "company has been removed", 
        success: true
      }
    else
      render json: {
        success: false, 
        errors: false, 
        info: ["cannot delete company"]
      }
    end
  end

  private

  def find_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :description, :location, :size, :industry, :rating, :logo)
  end

end
