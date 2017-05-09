class UsersController < ApplicationController
  def show
    @group = current_user.group.find(params[:id])
  end

  def edit
    @group = current_user.group.find(params[:id])
    sample(@group)
  end

  def update
    @group = current_user.group.find(params[:id])
    @group.update_attributes(params[:group])
  end

  def destroy
    @group = current_user.group.find(params[:id])
    @group.destroy
  end

  private

  def abc
    if true
      puts 'abc'
    end
    v = 123
    %w(bar foo xyz).each do |v|
      puts v
    end
  end

  def gvar
    $newgvar = 1
  end
  
  protected
    def sample(group)
      group.map {  |v| v.foo.count }
    end

  def hoge
    %i(une deux troi quattre cinq).each do |num|
      p "num: #{num}"
    end
  end

end
