class ListingsController < ApplicationController
#run these methods set listing for all these actions
before_action :set_listing, only: [:edit, :update, :destroy, :show]
#its a method defined in clearance gem
before_action :require_login, only: [:new, :create, :edit, :update] 

	#get "/listings/new"
	def new
		@listing = Listing.new
	end

	#post "listing"
	def create
		
		@listing = current_user.listings.new(listing_params)

		if @listing.save
			redirect_to listings_path(@listing)
		else
			render :new #render app/views/listings/new.html.erb the form again
		end
	end

	#get "listings/:id/edit"
	def edit
		# @listing = Listing.find(params[:id])
	end

	#put "listings/:id"
	def update
		# @listing = Listing.find(params[:id])
		if @listing.update(listing_params)
			redirect_to listing_path(@listing)
		else
			render :edit
		end
	end

	#delete "/listings/:id"
	def destroy
		Listing.delete(params[:id])
		redirect_to listings_path
	end

	#get "/listings"
	def index
		@listing = Listing.all
	end

	#get "/listings/:id"
	def show
		@user = @listing.user_id
	end

private 

	def listing_params
		params.require(:listing).permit(:title, :bedroom, :bathroom, :checkin, :checkout, :number_of_guest, :description, :rule, :price, :user_id)
	end

	def set_listing
		@listing = Listing.find(params[:id])
	end
end