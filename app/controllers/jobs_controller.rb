class JobsController < ApplicationController
    def index
        @jobs = Job.all
    end
    
    def show
        @job = Job.find(params[:id])
    end
    
    def new
       @job = Job.new
    end
    
    def create
        @job = Job.new(job_params)
        if @job.save
            flash[:success] = "Job created!"
            redirect_to root_path
        else
            render 'new'
        end
    end
    
    def edit
       @job = Job.find(params[:id])
    end
    
    def update
        @job = Job.find(params[:id])
        if @product.update(job_params)
            flash[:success] = "Job updated!"
            redirect_to root_path
        else
            render 'edit'
        end
    end
    
    def destroy
        @job = Job.find(params[:id])
        @job.destroy
        redirect_to root_path
    end
    
    private
        def job_params
            params.require(:job).permit(:company_name, :job_title, :job_number, :job_link, :date_applied, :interview_date, :contact_person, :contact_email)
        end
end