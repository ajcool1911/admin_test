module Admin
    class ContentsController < Admin::ApplicationController
        before_action :set_content, only: [:show, :edit, :update, :destroy]

        def show


        end

        def new
            @content = Content.new
        end

        def create
            @content = Content.new(content_params)
            if @content.save
              flash[:notice] = "Content was successfully created."
              redirect_to admin_content_path(@content)
            else
              render 'new'
            end
        end

        def edit
        end
        

        def update
          if @content.update(content_params)
            flash[:notice] = "content was successfully updated."
            redirect_to admin_content_path(@content)
          else
            render 'edit'  
          end 
        end

        private
         def set_content
            @content = Content.find(params[:id])
         end

         def content_params
            params.require(:content).permit(:name, :shortdesc, :longdesc, :location, :status )
         end
          

    end
  end
  