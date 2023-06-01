class PagesController < ApplicationController
    before_action :set_papel, only: %i[ show edit update destroy ]
  
    # GET /papeis or /papeis.json
    def index
    end
          
  end
  