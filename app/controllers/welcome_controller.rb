class WelcomeController < ApplicationController
    def hello_world
      render json: { message: 'Hello world' }
    end
  end
  