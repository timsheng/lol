require File.expand_path 'app/cases/spec_helper'

module Action	
	include PageObject
	
	text_field 'username', id: 'LoginForm_username'
	text_field 'password', id: 'LoginForm_password'
	button 'login_in', name: 'yt0'

  text_field :keywords_field,:id=>"keywords"
  button :search, :name=>"yt0"

	def login usr,pwd
		self.username = usr
		self.password = pwd
		self.login_in
		turn_to  HomePage
	end
    
  def hidden_element
		js=%{$(".navbar-inner").attr("style","display:none")}
		@browser.execute_script(js)
  end

  def hidden_payment_element
    js=%{$(".tableFloatingHeader").attr("style","display:none")}
    @browser.execute_script(js)
  end

  # link :choose_first_project, :xpath => "//td[2]/a"
  
  # def first_project
  #   self.choose_first_project_element.when_present.text
  # end
  
  link "consultation_tab", text: "Consultations"
  link "my_profile_tab", text:"My Profile"
  link "compliance_tab", text:"Compliance Approvals"

  def direct_to_newpayment_page
    self.navigate_to "#{$config.host}report/npayment/paid"
  end

  def direct_to_compliance_approval_page
    self.navigate_to "#{$config.host}report/complianceapproval/index"
  end

  checkbox :check_first_client, :xpath=>"(//td[@class='checkbox-column']/input)[1]"

  button :direct_approve_compliance_btn, :id=>"direct-approve-btn"

  def direct_approve_compliance
    self.check_first_client_element.when_present.check
    self.direct_approve_compliance_btn_element.when_present.click
  end

  #new payment taskid
  text_field :task_id, :id=>"PaymentSearchForm_taskid"

  #new payment page payment btn
  button :payment_btn, :name=>"yt1"


  def direct_to_consultation_page
    self.consultation_tab

    turn_to ConsultationPage
  end

  def direct_to_my_profile_page
    self.my_profile_tab

    turn_to MyProfilePage
  end

  def direct_to_compliance_page
    self.compliance_tab


    turn_to CompliancePage
  end


end
