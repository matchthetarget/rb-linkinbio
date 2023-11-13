class PublicFilesController < ApplicationController
  def show
    file_name = params.fetch("file")
    file_path = Rails.root.join("public", "#{file_name}.html")

    if File.exist?(file_path)
      render({ :file => file_path, :layout => false })
    else
      render({ :status => 404 })
    end
  end
end
