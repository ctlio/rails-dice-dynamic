Rails.application.routes.draw do

  get("/", {:controller => "dice", :action => "homepage"})

  get("/dice/:input1/:input2", {:controller => "dice", :action => "diceroll"})

end
