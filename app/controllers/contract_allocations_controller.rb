class ContractAllocationsController < ApplicationController
  before_action :set_contract_allocation, only: [:show, :edit, :update, :destroy]

  # GET /contract_allocations
  # GET /contract_allocations.json
  def index
    @contract_allocations = ContractAllocation.sorted
    @contract_allocation_id_list
  end

  # def items
  #   index
  #   render :index, layout: false
  # end

  def list
    index
    render :list, layout: false
  end



  # GET /contract_allocations/1
  # GET /contract_allocations/1.json
  def show
  end

  # GET /contract_allocations/new
  def new
    @contract_allocation = ContractAllocation.new()
  end

  # GET /contract_allocations/1/edit
  def edit
  end

  # POST /contract_allocations
  # POST /contract_allocations.json
  def create
    @contract_allocation = ContractAllocation.new(contract_allocation_params)

    respond_to do |format|
      if @contract_allocation.save
        format.html { redirect_to @contract_allocation, notice: 'Contract allocation was successfully created.' }
        format.json { render :show, status: :created, location: @contract_allocation }
      else
        format.html { render :new }
        format.json { render json: @contract_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_allocations/1
  # PATCH/PUT /contract_allocations/1.json
  def update
    respond_to do |format|
      if @contract_allocation.update(contract_allocation_params)
        format.html { redirect_to @contract_allocation, notice: 'Contract allocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract_allocation }
      else
        format.html { render :edit }
        format.json { render json: @contract_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_allocations/1
  # DELETE /contract_allocations/1.json
  def destroy
    @contract_allocation.destroy
    respond_to do |format|
      format.html { redirect_to contract_allocations_url, notice: 'Contract allocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_allocation
      @contract_allocation = ContractAllocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_allocation_params
      params.require(:contract_allocation).permit(:contract_id, :labor_category_id, :labor_rate, :hours)
    end
end
