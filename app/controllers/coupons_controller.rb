class CouponsController < ApplicationController 

#index action
    def index
    @coupons = Coupon.all 
    end 

#show action 
    def show 
    @coupon = Coupon.find(params[:id]) 
    end 

#new action
    def new 
    @coupon = Coupon.new 
    end 

#create action
    def create 
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code],store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)
    end 
end 