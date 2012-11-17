class RecordsController < ApplicationController
  def check
    record = Record.find params[:id]
    record.checked = params[:checked]
    record.save!
    render text:'ok'
  end
end
