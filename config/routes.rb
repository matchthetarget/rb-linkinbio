Rails.application.routes.draw do
  get("/:file", { :controller => "public_files", :action => "show" })
end
