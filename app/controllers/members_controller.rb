class MembersController < ApplicationController
	def show
		@member = Member.find(params[:id])
		@title = "Profile"
	end
	
	def new 
		@member = Member.new
		#@member = Patients.new
		#@member = ['1','2']
	  #return render :text => "bite me #{@member}"
		@title = "Sign up"
	end
	
	def create
		@member = Member.new(params[:member])
		if @member.save
			redirect_to @member, :notice => "Welcome to Kurbi!"
		else
			render "new"
		end
	end
	
	
end

#Actions
#                     POST   /members(.:format)                             {:action=>"create", :controller=>"members"}
#          new_member GET    /members/new(.:format)                         {:action=>"new", :controller=>"members"}
#         edit_member GET    /members/:id/edit(.:format)                    {:action=>"edit", :controller=>"members"}
#              member GET    /members/:id(.:format)                         {:action=>"show", :controller=>"members"}
#                     PUT    /members/:id(.:format)                         {:action=>"update", :controller=>"members"}
#                     DELETE /members/:id(.:format)                         {:action=>"destroy", :controller=>"members"