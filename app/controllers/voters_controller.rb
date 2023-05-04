class VotersController < ApplicationController
   
    def search
        @voters = Voter.where(id_card: params[:id_card])

    end

    def show

        @voter = Voter.find(params[:id])


    end
    def index
        @voters = Voter.all
    end
    def new
        @voter = Voter.new
    end
    def create
        @voter = Voter.new(params.require(:voter).permit(:name, :id_card, :address, :voter_number))
        if @voter.save
            flash[:notice] = "successfully saved"
            redirect_to @voter
        else
            render "new"
        end
    end
    def edit
        @voter = Voter.find(params[:id])
    end
    def update
        @voter = Voter.find(params[:id])
        if @voter.update(params.require(:voter).permit(:name, :id_card, :address, :voter_number))
            flash[:notice] = "successfully updated"
            redirect_to @voter
        else 
            render "edit"
        end
    end
    def destroy
        @voter = Voter.find(params[:id])
        @voter.destroy
        redirect_to root_path
    end
end
