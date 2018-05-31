class Api::V1::NotesController < ApplicationController
    before_action :set_note, only: [:show, :update, :destroy]

    def index
        @insect = Insect.find(params[:insect_id])
        @notes = @insect.notes
    end

    def show
        @insect = Insect.find(params[:insect_id])
        @note = Note.find(params[:id])
    end

    def create
        @note = Note.new( note_params)
        
        if @note.save
            render json: @insect, status: :created
        else
            render json: @insect.errors,  status: :unprocessable_entity
        end
    end

    def update
        @insect = Insect.find(params[:insect_id])
        
        if @note.update
            render json: @insect
        else
            render json: @insect.errors,  status: :unprocessable_entity
        end
    end

    def destroy
        @note.destroy
    end



    private
        def set_note
            @note = Note.find(params[:id])
        end

        def note_params
            params.require(:note).permit(:text, :insect_id)
        end
end
