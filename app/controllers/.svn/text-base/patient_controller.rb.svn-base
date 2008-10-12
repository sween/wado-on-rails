class PatientController < ApplicationController
  
layout "patient"  
before_filter :count
 
  def index
    
  end

 
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }



  def show
    @patient = Patient.find(params[:id])

    @stuffs = Patient.find_by_sql("select study.study_iuid, series.series_iuid, instance.sop_iuid FROM study, series, instance WHERE series.study_fk = study.pk and instance.series_fk = series.pk AND study.patient_fk = #{@params[:id]}") 

  end


  def search
   
    @patients = Patient.find_by_contents("%#{@params['T1']}%")
   
  end

def list
   # @patients = Patient.find_all
   @patient_pages, @patients = paginate :patients, :per_page => 10
  
end

end
