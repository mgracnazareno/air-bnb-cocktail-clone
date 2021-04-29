class DosesController < ApplicationController
 def new
  
   @dose = Dose.new
   @dose = 
 end
 
 def create
   @dose = Dose.new(dose_params)
   if @dose.save
     redirect_to @dose_path
   else
     render :new
   end
 end
 
 private

 def dose_params
  params.require(:dose).permit(:description)
 end

end
