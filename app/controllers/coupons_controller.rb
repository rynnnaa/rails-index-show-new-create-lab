class CouponsController < ApplicationController

  def index
    @coupon = Coupon.all
  end

  def new 
    @coupon = Coupon.new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    @coupon.save
    redirect_to @coupon
  end
end


