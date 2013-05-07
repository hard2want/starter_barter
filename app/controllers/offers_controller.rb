class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find_by_id(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new
    @offer.user_id = params[:user_id]
    @offer.skill_id = params[:skill_id]
    @offer.other_user_id = params[:other_user_id]
    @offer.other_skill_id = params[:other_skill_id]

    if @offer.save
            redirect_to offers_url
          else
      render 'new'
    end
  end

  def edit
    @offer = Offer.find_by_id(params[:id])
  end

  def update
    @offer = Offer.find_by_id(params[:id])
    @offer.user_id = params[:user_id]
    @offer.skill_id = params[:skill_id]
    @offer.other_user_id = params[:other_user_id]
    @offer.other_skill_id = params[:other_skill_id]

    if @offer.save
            redirect_to offers_url
          else
      render 'edit'
    end
  end

  def destroy
    @offer = Offer.find_by_id(params[:id])
    @offer.destroy
        redirect_to offers_url
      end

  def accept
    o = Offer.find_by_id(params[:offer_id])
    o.accepted= true
    o.save

    redirect_to user_path(params[:user_id])
  end
end
