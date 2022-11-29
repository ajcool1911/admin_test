class FeadbacksController < ApplicationController
    before_action :set_feadback, only: [:show, :edit, :update, :destroy]

    def show


    end

    def new
        @feadback = Feadbacks.new
    end

    def create
        @feadback = Feadbacks.new(feadback_params)
        if @feadback.save
          FeadbackMailer.create(@feadback).deliver_now
          flash[:notice] = "Feadback was successfully created."
          redirect_to feadbacks_path(@feadback)
        else
          render 'new'
        end
    end

    def edit
    end
    

    def update
      if @feadback.update(feadback_params)
        flash[:notice] = "content was successfully updated."
        FeadbackMailer.update(@feadback).deliver_now
        redirect_to feadbacks_path(@feadback)
      else
        render 'edit'  
      end 
    end

    def destroy
      FeadbackMailer.delete(@feadback).deliver_now
      @feadback.destroy
        redirect_to feadbacks_path(@feadback), notice: 'feadback has been deleted successfully'
    end

    private
     def set_content
        @feadback = Feadbacks.find(params[:id])
     end

     def feadback_params
        params.require(:feadbacks).permit(:firstname, :lastname, :reviews, :description)
     end
      
end