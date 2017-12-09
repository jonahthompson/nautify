class ContractsController < ApplicationController
  def create
  	@contract = Contract.new(contract_params)
    @contract.save
    @boat = @contract.boat
    @job = @contract.job
  	respond_to do |format|
      format.js
      format.html
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
      format.html
    end
  end

  private

  def contract_params
    params.require(:contract).permit(:boat_id, :job_id)
  end
end