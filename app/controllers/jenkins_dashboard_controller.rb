class JenkinsDashboardController < ApplicationController
  def build_summary
  end

  def build_dashboard
  end

  def index
  	# render json: Project.all
  	render json: Build.all
  	# render json: Project.all[3].builds
  	# render json: Project.all[9].builds
  end
end
