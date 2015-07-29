Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:move", { :controller => "calculations", :action => "square_root" })
  get("/random/:move/:integer", { :controller => "calculations", :action => "random" })
   get("//payment/:move/:integer/:text", { :controller => "calculations", :action => "payment" })

     get("//square/:move", { :controller => "calculations", :action => "square" })



end






