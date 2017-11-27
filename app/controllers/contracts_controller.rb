class ContractsController < ApplicationController
  def create
  	@contract = Contract.new(contract_params)
  	if @contract.save
      redirect_to current_user
    else
      render jobs_path
    end 
  end

  def update
  	@contract = Contract.find(params[:id])
    @contract.update(contract_params)
  end

  def destroy
  	respond_to do |format|
      @contract = Contract.find(params[:id]).destroy
      format.js
      format.html {redirect_to current_user}
    end
  end

  private

  def contract_params
    params.require(:contract).permit(:boat_id, :job_id)
  end
end