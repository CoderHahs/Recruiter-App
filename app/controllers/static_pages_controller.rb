class StaticPagesController < ApplicationController

  def about

    @name = "Hrithik"

    @pokemon = [0,1,2,3,4,5,6]

    render("about_template")
  end

  def contact
    render("contact_template")    
  end

  def home
    render ("home_template")
  end

  def resume
    render ("resume")
  end

  def testRecruiter
    recruiter = Recruiter.all
    @num_recruiter = recruiter
  end
end

