# -*- encoding : utf-8 -*-
class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])
    if @list.save
      redirect_to @list, :notice => "Successfully created list."
    else
      render :action => 'new'
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(params[:list])
      redirect_to @list, :notice  => "Successfully updated list."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_url, :notice => "Successfully destroyed list."
  end

  def clone
    list = List.find(params[:id])
    new_list = list.dup
    new_list.name += " (копия)"
    list.records.each do |r|
      new_list.records << r.dup
    end
    new_list.save
    redirect_to lists_url, notice: 'Successfully cloned list.'
  end
end
