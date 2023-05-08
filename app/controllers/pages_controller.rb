class PagesController < ApplicationController
  # default

  def ask
    # default
  end

  def answer
    if params[:answer] == 'I am going to work'
      @reply = 'Great!'
    elsif params[:answer] == 'time'
      @reply = Time.now
    elsif params[:answer].include?('?')
      @reply = 'Silly question, get dressed and go to work!.'
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end
end
