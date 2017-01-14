class CustomersController < ApplicationController
  def create
    @room = Room.find(params[:room_id])
    @customer = @room.customer.create(customer_params)

    redirect_to @room
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name , :last_name , :tel_no)
  end

end
