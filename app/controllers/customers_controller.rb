class CustomersController < ApplicationController
  before_action :authenticate_manager!

  def create
    @room = Room.find(params[:room_id])
    @customer = @room.customer.create(customer_params)

    redirect_to @room
  end

  def destroy
    @customer = @room.customer.destroy(customer_params)
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name , :last_name , :tel_no , :booking_date , :checkout_date)
  end

end
