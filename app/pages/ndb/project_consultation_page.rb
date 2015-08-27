#encoding: utf-8
require File.expand_path 'app/cases/shared/action'
class ProjectConsultationPage < Lol::Page
  include Action
  page_url "#{$config.host}project/consultation/index/index"
  
  #search consultation btn
  button :search_consultation, :name=> "yt0"

  #user filter
  span :user_filter, :xpath=>"//div[@id='s2id_ProjectSearchForm_userid']/a/span"

  #select user
  div :select_user, :text=>"test_km1"

  #client filter
  span :client_filter, :xpath=> "//div[@id='s2id_ProjectSearchForm_clientid']/a/span"

  #select client
  div :select_client, :text=>"小樱1"

  #select ca client
  div :select_ca_client, :text=>"阿斯达 (若风)"

  #select compliance client
  div :select_compliance_client, :text=>"蒂姆客户"

  #project table list
  table :project_table_list, :class=>"items table table-striped"

  #participant filter
  select_list :participant_filter, :id=>"ProjectSearchForm_participant"

  #search keywords
  text_field :keywords, :id=>"ProjectSearchForm_keywords"

  #industry filter
  select_list :industry_filter, :id=> "ProjectSearchForm_industryid"

  #status filter
  select_list :status_filter, :id=>"ProjectSearchForm_status"

  #create consultation link
  link :create_consultation_link, :id=>"project_create_btn"

  #project type
  select_list :project_type, :id=>"Project_category"

  #project name
  text_field :project_name, :id=> "Project_name"

  #project client case code
  text_field :project_client_case_code, :id=>"Project_clientcode"

  #project description
  text_area :project_description, :id=> "Project_description"

  #select industry
  select_list :select_industry, :id=> "industry-selector"

  #project consultants requested
  text_field :project_consultants_requested, :id=>"Project_requestedconsultants"

  #project consultants expected
  text_field :project_consultants_expected, :id=>"Project_expectedconsultants"

  #project price
  text_field :project_price, :id=>"Project_price"

  #project price currency
  select_list :project_price_currency, :id=>"Project_currencyunit"

  #project time frame
  select_list :project_time_frame, :id=>"Project_timeframe"

  #project next btn
  button :project_next, :id=> "yw1"

  #project key questions
  text_field :key_questions, :id=> "ProjectDetailForm_keyQuestions"

  #project client 
  span :project_client, :xpath=> "//div[@id='s2id_ProjectClient_clientid']/a/span"

  #select project client
  div :select_project_client, :text=> "小樱1"

  #select project client with ca
  div :select_project_client_with_ca, :text=> "阿斯达 (若风)"

  #project client contact
  text_field :project_client_contact, :xpath=>"//div[@id='s2id_ProjectClientContact_contactid']/ul/li/input"

  #select project client contact
  div :select_project_client_contact, :text=>"WEWEWE"

  #client project manager
  text_field :client_project_manager, :xpath=>"//div[@id='s2id_ProjectClientContactManager_contactid']/ul/li/input"

  #select client project manager
  div :select_client_project_manager, :text=>"韩寒"

  #project manager
  select_list :project_manager, :id=>"ProjectDetailForm_pm"

  #skm
  select_list :skm, :id=>"ProjectDetailForm_skm"

  #support member
  text_field :support_member, :xpath=>"//div[@id='s2id_ProjectDetailForm_other']/ul/li/input"

  #select support member
  div :select_support_member, :text=>"Test Skm1(test_skm1) - Starbark Team"

  #info requirements
  text_area :info_requirements, :id=> "ProjectDetailForm_infoRequirements"
  
  #key questions
  text_area :key_questions, :id=>"ProjectDetailForm_keyQuestions"

  #preferred profiles
  text_area :preferred_profiles, :id=>"ProjectDetailForm_preferredProfiles"

  #questionnaire
  text_area :questionnaire, :id=>"ProjectDetailForm_questionnaire"

  #save consultation
  button :save_consultation, :id=>"yw5"

  #first consultation
  link :first_consultation, :xpath=>"//tr[1]/td[3]/a"

  #project info tab
  link :project_info_tab, :xpath=> "//ul[@id='yw0']/li[2]/a"
  
  #edit project basic information 
  element :edit_project_basic_information,:i, :xpath=> "//a[@id='project-basic-edit-btn']/i"

  #edit project client contact
  element :edit_project_client_contact,:i, :xpath=>"//a[@id='project-client-and-contact-edit-btn']/i"

  #edit project team 
  element :edit_project_team, :i, :xpath=> "//a[@id='project-team-edit-btn']/i"

  #edit project manager
  select_list :edit_project_manager, :id=>"Team_pm"

  #edit skm
  select_list :edit_skm, :id=>"Team_skm"

  #edit project requirements
  element :edit_project_requirements, :i, :xpath=>"//a[@id='project-requirements-edit-btn']/i"

  #edit info requirements
  text_area :edit_info_requirements, :id=>"Profile_info_requirements"

  #edit key questions
  text_area :edit_key_questions, :id=>"Profile_key_questions"

  #edit preferred profiles
  text_area :edit_preferred_profiles, :id=>"Profile_preferred_profiles"

  #edit questionnaire
  text_area :edit_questionnaire, :id=>"Profile_questionnaire"

  #project compliance tab
  link :project_compliance_tab, :xpath=>"//ul[@id='yw0']/li[3]/a"

  #project client info tab
  link :project_client_info_tab, :xpath=>"//ul[@id='yw0']/li[4]/a"

  #project client contact tab
  link :project_client_contact_tab, :xpath=>"//ul[@id='yw0']/li[5]/a"

  #first client contact
  link :first_client_contact, :xpath=>"//tr/td/a"

  #project emails tab
  link :project_emails_tab, :xpath=>"//ul[@id='yw0']/li[6]/a"

  #project sms tab
  link :project_sms_tab, :xpath=>"//ul[@id='yw0']/li[7]/a"

  #first project checkbox 
  checkbox :first_project_checkbox, :id=> "project-grid_c0_0"

  #second project checkbox
  checkbox :second_project_checkbox, :id=> "project-grid_c0_1"

  #choose action
  select_list :choose_action, :id=> "Action_type"

  #project update btn
  link :project_update_btn, :id=> "project_update_btn"

  #project alert information
  div :alert_success_information,:xpath=> "//div[3]/div/div/div[1]"

  #project view btn
  element :project_view_btn, :i, :xpath=>"//tr[1]/td[20]/a[1]/i"

  #project upload btn
  element :project_upload_btn, :i, :xpath=>"//tr[1]/td[20]/a[3]/i"

  #select upload file
  file_field :select_upload_file, :id=>"ndb-file-upload-input"

  #upload file
  button :upload_file, :id=>"ndb-file-upload-upload-btn"

  #delete project btn
  element :delete_project_btn, :i, :xpath=>"//tr[1]/td[20]/a[2]/i"

  #choose task action
  select_list :choose_task_action, :id=> "action"

  #click update btn
  button :update_task_status, :id=> "taskupdate-btn"

  #task list checbox
  elements :task_list_checkbox, :input, :xpath=>"//td[@class='checkbox-column']/input"

  #task list thead checkbox
  checkbox :task_list_thead_checkbox,  :xpath=>"//thead[@class='tableFloatingHeaderOriginal']/tr/th/input"

  #add consultant link
  link :add_consultant_link, :text=> "Add Consultant"

  #first consultant checkbox
  checkbox :first_consultant, :id=> "yw0_c0_0"

  #second consultant checkbox
  checkbox :second_consultant, :id=> "yw0_c0_1"

  #click add consultant btn
  button :add_consultant_to_project_btn, :id=> "btn-add-consultant"

  #Go to this project list btn
  button :back_to_the_project, :text=> "Back to the project"

  #choose whether Contacted or not
  radio_button :select_contacted, :xpath=> "//div[6]/div/span/input"

  #next btn
  button :next_btn, :class=>"btn button-next"

  #select email to
  text_field :select_email_to, :xpath=>"//div[@class='tab-content']/div[2]/div[1]/div[3]/span[2]/div/ul/li/input"

  #send email
  button :send_email, :id=>"send-email"

  #recommend continue btn
  span :recommend_continue,:xpath=>"//span[@class='ui-button-text' and contains(text(),'Continue')]"

  #consultation time
  text_field :consultation_time, :xpath=> "//div[@class='consultant-info']/div[1]/span[2]/span[2]/div/input"

  #nick name  
  text_field :nick_name, :xpath=> "//div[@class='consultant-info']/div[3]/span[2]/input"

  #type of interview
  select_list :type_of_interview, :xpath=> "//div[@class='consultant-info']/div[5]/span[2]/select"

  #select calendar to
  text_field :select_calendar_to ,:xpath=> "//div[@id='email_template']/div[4]/span[2]/div/ul/li/input"

  #cancel btn
  button :cancel_btn ,:name=>"cancel"

  #cancel calendar btn
  element :cancel_calendar_btn , :i ,:xpath=> "//a[@class='cancel-calendar']/i"

  #add client contact btn
  element :add_client_contact_btn, :i, :xpath=>"//a[@class='add-client-contacts']/i"

  #confirm_add_client_contact_btn
  span :confirm_add_client_contact_btn, :xpath=>"(//span[@class='ui-button-text' and contains(text(),'OK')])[2]"

  #task manager
  select_list :task_manager, :id=>"ProjectConsultationTask_taskmanagerid"

  #task end date
  text_field :task_end_date ,:id=> "ProjectConsultationTask_endtime_datepicker"

  #select task end date
  cell :select_task_end_date, :xpath=>"//table/tbody/tr[5]/td[4]"

  #task end time
  text_field :task_end_time, :id=>"ProjectConsultationTask_endtimeString"

  #consultation task type of interview
  select_list :consultation_task_type_of_interview ,:id=> "ProjectConsultationTask_typeofinterview"

  #project consultation task industry
  span :consultation_task_industry ,:xpath=> "//div[@id='s2id_ProjectConsultationTask_industry']/a/span"

  #select project consultation task industry
  div :select_consultation_task_industry ,:text=> "能源-能源开采与加工-石油与天然气开采"

  #client hour
  text_field :client_hour ,:id=> "ProjectTaskReceipts_hours"

  #client billing notes
  text_area :client_billing_notes,:id=> "ProjectTaskReceipts_billnotes"

  #consultant hour
  text_field :consultant_hour ,:id=> "ProjectTaskPayment_minutes"

  #uncheck send feedback email to consultant
  checkbox :send_feedback_email_to_consultant,:id=>"send-mail-consultant"

  #complete page save btn
  button :complete_page_save_btn ,:id=> "task-complete-form-btn"

  #apply for payment btn
  link :apply_for_payment_btn, :class=>"apply-payment"

  #yes or no butn
  span :yes_or_no_btn, :class=>"labelLeft"

  #apply btn
  span :apply_btn, :xpath=>"(//span[@class='ui-button-text' and contains(text(),'Apply')])[3]"

  #task table list
  table :task_table_list ,:xpath=>"//div[@id='task-grid']/table"

  #cl btn
  link :cl_btn, :class=>"cl-adjustment-btn"

  #new client hour
  text_field :new_client_hour, :id=>"AdjustClientForm_clientHour"

  #billing notes
  text_area :billing_notes, :id=>"AdjustClientForm_changeReason"

  #confirm change cl btn
  span :confirm_change_cl_btn ,:xpath=>"(//span[@class='ui-button-text' and contains(text(),'Apply')])[2]"

  #co btn
  link :co_btn, :class=>"co-adjustment-btn"

  #new consultant hour
  text_field :new_consultant_hour, :id=>"PaymentReportDetail_consultant_hours"

  #payment notes
  text_area :payment_notes, :id=>"PaymentReportDetail_change_reason"

  #confirm change co btn
  span :confirm_change_co_btn, :xpath=>"(//span[@class='ui-button-text' and contains(text(),'Apply')])[1]"

  #new consultant cash
  text_field :new_consultant_cash, :id=>"PaymentReportDetail_consultant_cash"

  #not selected type
  elements :not_selected_type,:input,:name=>"ProjectConsultationTask[reject]"

  #confirm not selected type
  span :confirm_not_selected_type, :xpath=>"(//span[@class='ui-button-text' and contains(text(),'OK')])[1]"

  #task list send sms btn
  link :task_list_send_sms_btn, :id=>"task_update_btn"

  #confirm send sms
  span :confirm_send_sms, :xpath=>"//span[@class='ui-button-text' and contains(text(),'Send')]"

  #task list page alert error info
  div :alert_error_info, :id=>"flash-alert-error"

  #unsuccess submit btn
  button :unsuccess_submit_btn, :id=>"task-unsuccess-btn"

  #update task btn
  element :update_task_btn, :i, :xpath=>"(//a[@class='update']/i)[2]"

  #update task page save btn
  button :update_task_page_save_btn, :id=>"yw1"
  
  #task feedback btn
  element :task_feedback_btn , :i ,:xpath=>"(//a[@class='task-feedback-href']/i)[1]"

  #expertise
  select_list :select_expertise ,:id=> "expertise"

  #communication
  select_list :select_communication ,:id=> "communication"

  #professionalism
  select_list :select_professionalism ,:id=> "professionalism"

  #save task feedback
  span :save_task_feedback ,:xpath=> "//span[@class='ui-button-text' and contains(text(),'Save')]"

  #km note link
  link :km_note_link ,:xpath=> "//*[@id='task-grid']/table/tbody/tr[1]/td[9]/a"

  #km note value
  text_field :km_note_value ,:xpath=> "//div[@class='control-group']/div[1]/div[1]/input"

  #save km note
  element :save_km_note,:i, :xpath=> "//div[@class='editable-buttons']/button[1]/i"

  #choose region
  select_list :choose_region, :id=>"task-origin"

  #search task btn
  element :search_task_btn, :i, :xpath=>"//a[@id='task-search-icon']/i"

  #search task keywords
  text_field :search_task_keywords, :id=>"task-search-text"

  #fo btn
  elements :fo_btn,:a, :class=>"fo-adjustment-btn"

  #confirm fo
  span :confirm_fo, :xpath=>"(//span[@class='ui-button-text' and contains(text(),'OK')])[3]"

  #no match ca alert
  div :no_match_ca_alert, :id=>"recommend-alert"

  #resend ca btn
  link :resend_ca_link ,:xpath=>"//td[@class='button-column']/div[3]/a"

  #upload ca attachment btn
  element :upload_ca_attachment_btn, :i, :xpath=>"(//a[@class='upload-document']/i)[2]"

  #sign ca btn
  link :sign_ca_btn, :xpath=>"//td[@class='button-column']/div[4]/a"

  #delete ca attachment
  element :delete_ca_attachment, :i, :class=>"icon-remove documents_delete"

  #direct approve btn
  element :direct_approve_btn, :i, :xpath=>"(//a[@class='approve-href']/i)[2]"

  #change status btn
  button :change_status_btn, :id=>"change-status"

  #verify row is red
  # element :verify_row_red_ornot , :tr ,:xpath=> "//table/tbody/tr"
  #save btn 
  # button :save_project_feedback, :xpath=>"//div[7]/div[3]/div/button"
  #delete project
  # element :delete_project, :i ,:xpath=>"//tr/td[17]/a[3]/i"
  #alert info 
  # div :verify_alert, :class=>"alert alert-block alert-error"
  #Project requested consultants
  # text_field :input_consultants_requested, :id=>"Project_requestedconsultants"
  #Project expected consultants
  # text_field :input_consultants_expected, :id=>"Project_expectedconsultants"
  #Project price
  # text_field :input_consultants_price, :id=>"Project_price"
  #Project currencyunit
  # select_list :select_currency, :id=>"Project_currencyunit"
  
  # button :cancel_updatetask, :text=>"Cancel"
  #cancel arrange step2
  # button :cancel_arrange_step2, :xpath=>"//div[2]/div[2]/input[3]"


  #close btn
  # button :close_btn, :text=>"Close"
  #verify style is red
  # div :style_red, :xpath=>"//div[3]/div/div/div/div/form/div/div/div"
  #click consultant link
  # link :click_consultant_link, :xpath=>"//tr/td[9]/div/a"
  #recommend warning bar info
  # div :recommend_warning_bar_info, :id=>"recommend-confirm"       

  #input recommend ID 
  # text_field :input_recommend_id, :xpath=>"//div[3]/div/span[2]/input"
  #recommand step 1 ID
  # span :verify_recommand_ID, :id=>"'listid-error_' . $consultant->id"
  #link of Choose Other Company&Position
  # link :choose_position, :text=>"Choose Other Company&Position"
  #click the OK btn
  # button :ok_btn, :text=>"OK"
  #previous btn
  # button :previous_btn, :value=>"Previous"
  #cancel send email to client btn
  # button :cancel_send_mail, :xpath=>"//div/button[2]"
  #continue send email to client btn 
  # button :continue_send_mail, :text=>"Continue"
  #click the consultant Han when arrange
  # link :consultant_link_when_arrange, :text=>"Han"
  #verify nick name
  # span :verify_nick_name, :xpath=>"//div[3]/span[2]"
  #send calendar to client checkbox
  # checkbox :send_calendar_email, :xpath=>"//label/input"
  #verify consultant date
  # span :verify_consultant_date, :xpath=>"//div[3]/div/span[2]/span[5]"

  

  #project info requirement alert
  # span :project_info_requirement_alert, :class=>"help-inline error"
  #Profile key questions
  # text_area :consultation_key_questions, :id=>"Profile_key_questions"
  #high rate img on consultation task list page 
  # img :high_rate_img, :xpath=>"(//td/div/img)[3]"

  #send ca link
  link :send_ca_link, :xpath=>"(//td[@class='button-column']/div[2]/a)[2]"

  #ca message
  text_area :ca_message, :id=>"compliance_message"

  #ca message send btn
  button :ca_message_send_btn, :id=>"compliance-send-submit"
  
  #start time of task basic info 
  # text_field :input_start_time, :id=>"ProjectConsultationTask_starttimeString"
  #end time of task basic info 
  # text_field :input_end_time, :id=>"ProjectConsultationTask_endtimeString"
  #checkbox of send mail client
  # checkbox :send_mail_client_box, :id=>"send-mail-client"
  #send feedback mail to consultant
  # checkbox :send_mail_consultant_box, :name=>"send-mail"


  # def onhold_note
  #   self.select_onhold_reason_element.when_present.select "Change of project direction"
  #   self.save_onhold_note_element.when_present.click
  # end

  def alert_success
   self.alert_success_information_element.when_present.text
  end
  
  def project_feedback
	    self.project_feedback_link_element.when_present.click
  end
	
	def add_consultant
	    self.add_consultant_link_element.when_present.click
      hidden_element
	    self.keywords_field_element.when_present.value="Ryan"
	    self.search_element.when_present.click
      hidden_element
			self.first_consultant_element.when_present.click
			self.add_consultant_to_project_btn_element.when_present.click
			self.back_to_the_project_element.when_present.click
	end
	
	def add_two_consultants
	    self.add_consultant_link_element.when_present.click
      hidden_element
      self.keywords_field_element.when_present.value="Ryan"
      self.search_element.when_present.click
      hidden_element
      self.first_consultant_element.when_present.click
      self.second_consultant_element.when_present.click
      self.add_consultant_to_project_btn_element.when_present.click
      self.back_to_the_project_element.when_present.click
	end
	
  #-1
	# def change_selected_without_compliace
	#     sleep 2
	#     self.first_task_checkbox_element.when_present.click
	#     self.choose_task_action_element.when_present.select("Selected")
	# 		self.update_task_status_element.when_present.click
	# 		self.text.include? "You cannot do select action because there is no compliance requirement."
	# end
	
	def change_notcontacted_to_recommended
	    self.check_first_task_checkbox
	    self.choose_task_action_element.when_present.select "Recommended"
	    self.update_task_status_element.when_present.click
			self.select_contacted_element.when_present.click
			self.next_btn_element.when_present.click
      self.select_email_to_element.when_present.value="test_km1@capvision.com"
      self.send_keys(:enter)
      self.send_email_element.when_present.click
      self.recommend_continue_element.when_present.click
	end

  def change_recommended_to_arranged
      self.check_first_task_checkbox
      self.choose_task_action_element.when_present.select "Arranged"
      self.update_task_status_element.when_present.click
      self.consultation_time_element.when_present.clear
      self.consultation_time_element.when_present.value= "23:57"
      self.nick_name_element.when_present.clear
      self.nick_name_element.when_present.value= "cenimeiace"
      self.type_of_interview_element.when_present.select "Phone"
      self.next_btn_element.when_present.click
      self.select_email_to_element.when_present.value="test_km1@capvision.com"
      self.send_keys(:enter)
      self.select_calendar_to_element.when_present.value="tsheng@capvision.com"
      self.send_keys(:enter)
      self.send_email_element.when_present.click
      sleep 10
      self.cancel_btn_element.when_present.click
  end

  def add_client_contact
    self.add_client_contact_btn_element.when_present.click
    self.confirm_add_client_contact_btn_element.when_present.click
  end


  def change_arranged_to_completed_pic
      self.check_first_task_checkbox
      self.choose_task_action_element.when_present.select "Completed"
      self.update_task_status_element.when_present.click
      self.task_manager_element.when_present.select "test_km1"
      self.task_end_date_element.when_present.click
      self.select_task_end_date_element.when_present.click
      self.task_end_time_element.when_present.clear
      self.task_end_time_element.when_present.value="20:00"
      self.consultation_task_type_of_interview_element.when_present.select "In-Person"
      self.consultation_task_industry_element.when_present.click
      self.select_consultation_task_industry_element.when_present.click
      self.client_hour_element.when_present.clear
      self.client_hour_element.when_present.value= "10"
      self.client_billing_notes_element.when_present.clear
      self.client_billing_notes_element.when_present.value= "this is billing notes"
      self.consultant_hour_element.when_present.clear
      self.consultant_hour_element.when_present.value= "10"
      self.send_feedback_email_to_consultant_element.when_present.uncheck
      self.complete_page_save_btn_element.when_present.click
  end
  
  def change_pic_to_pip
    self.apply_for_payment_btn_element.when_present.click
    self.yes_or_no_btn_element.when_present.click
    sleep 5
    self.apply_btn_element.when_present.click
  end

  def get_task_id
    self.task_table_list_element[3][1].when_present.text
  end

  def get_fo_status
    self.task_table_list_element[6][4].when_present.text
  end

  def get_project_url
    self.current_url
  end

  def change_pip_to_pc
    taskid=(self.get_task_id).to_i
    self.direct_to_newpayment_page
    self.task_id_element.when_present.value=taskid
    self.search_element.when_present.click
    message=self.confirm(true) do
       self.payment_btn_element.when_present.click
    end
  end

  def change_cl
    self.cl_btn_element.when_present.click
    self.new_client_hour_element.when_present.value="12"
    self.billing_notes_element.when_present.value="need change cl"
    self.confirm_change_cl_btn_element.when_present.click
  end

  def change_consultant_hour
    self.co_btn_element.when_present.click
    self.new_consultant_hour_element.when_present.value="2"
    self.payment_notes_element.when_present.value="need change consultant hour"
    self.confirm_change_co_btn_element.when_present.click
  end

  def change_consultant_cash
    self.co_btn_element.when_present.click
    self.yes_or_no_btn_element.when_present.click
    self.new_consultant_cash_element.when_present.value="200"
    self.payment_notes_element.when_present.value="need change consultant cash"
    self.confirm_change_co_btn_element.when_present.click
  end

  def change_notcontacted_to_notselected type
      self.choose_task_action_element.when_present.select "Not Selected"
      self.update_task_status_element.when_present.click
      sleep 2
      self.not_selected_type_elements[type].when_present.click
      self.confirm_not_selected_type_element.when_present.click
  end
    
	
	# def change_pending
	#     sleep 2
 #      self.first_task_checkbox_element.when_present.click
 #      if self.second_task_checkbox_element.exist?
 #        self.second_task_checkbox_element.when_present.click
 #      end
 #      self.choose_task_action_element.when_present.select("Pending")
 #      self.update_task_status_element.when_present.click
	# end
	
	# def change_second_task task_status
	#     sleep 2
	#     self.second_task_checkbox_element.when_present.click
 #      self.choose_task_action_element.when_present.select task_status
 #      self.update_task_status_element.when_present.click
 #      if task_status == "Recommended"
 #        self.contacted_btn_element.when_present.click
 #        puts "Recommend task"
 #      else
 #        sleep 2
 #        self.consultant_date_element.when_present.clear
 #        self.consultant_date_element.when_present.append "23:57"
 #        self.nick_name_element.when_present.clear
 #        self.nick_name_element.when_present.append "cenimeiace"
 #        self.type_of_interview_element.when_present.select "Phone"
 #        puts "Arrange task"
 #      end
 #      self.change_status_element.when_present.click
	# end
	
	# def change_ca_to_NA
	#     self.link_to_compliance_element.when_present.click
	#     self.client_agreement_element.when_present.click
 #      self.select_client_agreement_element.when_present.select "N/A"
 #      self.save_client_agreement_element.when_present.click
	# end
	
	# def change_ca_to_signment
	# 	  self.link_to_compliance_element.when_present.click
 #      self.client_agreement_element.when_present.click
 #      self.select_client_agreement_element.when_present.select "AT测试ca1_修改后"
 #      self.save_client_agreement_element.when_present.click
	# end
	

	# def send_calendar
	#     sleep 2
	# 		self.first_task_checkbox_element.when_present.click
	# 		self.choose_task_action_element.when_present.select "Arranged"
	# 		self.update_task_status_element.when_present.click
	# 		sleep 2
	# 		self.consultant_date_element.when_present.clear
 #      self.consultant_date_element.when_present.append "23:57"
 #      self.nick_name_element.when_present.clear
 #      self.nick_name_element.when_present.append "cenimeiace"
 #      self.type_of_interview_element.when_present.select "Phone"
	# 		self.next_step_element.when_present.click
	# 		sleep 2
	# 		self.input_mail_to_element.when_present.click
	# 		self.select_email_element.when_present.click
	# 		self.input_calendar_to_element.when_present.click
	# 		self.select_email1_element.when_present.click
	# 		sleep 2
	# 		self.send_email_element.when_present.click
	# 		self.click_no_btn_element.when_present.click
	# 		sleep 6
	# end
	
	# def send_sms_arrange 
	#     sleep 2
 #      self.first_task_checkbox_element.when_present.click
 #      if self.second_task_checkbox_element.exist?
 #        self.second_task_checkbox_element.when_present.click
 #      end
	# 		self.choose_task_action_element.when_present.select "Arranged"
	# 		self.update_task_status_element.when_present.click
	# 		sleep 2
	# 		self.consultant_date_element.when_present.clear
 #      self.consultant_date_element.when_present.append "23:57"
 #      self.nick_name_element.when_present.clear
 #      self.nick_name_element.when_present.append "cenimeiace"
 #      self.type_of_interview_element.when_present.select "Phone"
	# 		self.next_step_element.when_present.click
	# 		sleep 2
	# 		self.input_mail_to_element.when_present.click
 #      self.select_email_element.when_present.click
 #      self.input_calendar_to_element.when_present.click
	# 		self.select_calendar_to_element.when_present.click
	# 		self.send_email_element.when_present.click
	# 		sleep 5
	# 		self.click_yes_btn_element.when_present.click
	# 		sleep 2
	# 		self.select_sms_element.when_present.click
	# 		if self.select_second_sms_element.exist?
 #         self.select_second_sms_element.when_present.click 
	# 		end
	# 		self.submit_sms_element.when_present.click
	# end
	
	

	
	def change_completed_to_deleted
			self.check_first_task_checkbox
			self.choose_task_action_element.when_present.select "Deleted"
			self.update_task_status_element.when_present.click
	end
	
	# def change_completed_to_10minstest
	# 	  self.attach_to_window(:title=> first_project+" - Task List - Capvision")
	# 	  sleep 2
	# 		self.first_task_checkbox_element.when_present.click
	# 		self.choose_task_action_element.when_present.select "10mins test"
	# 		self.update_task_status_element.when_present.click
	# 		sleep 2
	# 		self.text.include? "Change task status successfully. "
	# end
	
	def update_task
	    self.update_task_btn_element.when_present.click
      hidden_element
			self.client_hour_element.when_present.value="2"
			self.update_task_page_save_btn_element.when_present.click
	end
	
	# def	tc
	#     self.link_to_compliance_element.when_present.click
	#     self.compliance_tnc_link_element.when_present.click
	#     self.select_tnc_or_ca_element.when_present.select "凯盛专家网络条款协议_V4.0"
	#     self.save_tnc_or_ca_element.when_present.click
	# end
	
	# def	client_agreement
	#     self.compliance_ca_link_element.when_present.click
	#     self.select_tnc_or_ca_element.when_present.select "AT测试ca1_修改后"
	#     self.save_tnc_or_ca_element.when_present.click
	# end
	
	# def	training
	# 		self.training_label_element.when_present.click
	# end
	
	# def	capvision_approval
	# 	  self.capcheck_label_element.when_present.click
	# end
	
	# def	client_approval
	#     self.clientcheck_label_element.when_present.click
	#     self.link_to_task_list_element.when_present.click
	# 		sleep 2
	# 		self.first_task_checkbox_element.when_present.click
	# 		self.choose_task_action_element.when_present.select "Selected"
	# 		self.update_task_status_element.when_present.click
	# 		self.text.include? "You cannot select the action before you recommend the task."
	# end
	
	
	# def change_notcontacted_to_selected
	#     self.task_list_link_element.when_present.click
	# 	  sleep 2
	# 		self.first_task_checkbox_element.when_present.click
	# 		self.choose_task_action_element.when_present.select "Selected"
	# 		self.update_task_status_element.when_present.click
	# 		sleep 2
	# 		self.text.include? "You cannot select the action before you recommend the task."
	# end
	
	def upload_ca_attachment dir
      self.upload_ca_attachment_btn_element.when_present.click
			self.select_upload_file=dir
      self.upload_file_element.when_present.click
	end
	
	# def upload_dayu20m
	# 		self.upload_file_element.when_present.click
	# 		self.ndb_file_upload_input_element.when_present.set 
	# 		self.ndb_file_upload_btn_element.when_present.click
	# 		sleep 1
	# 		self.text.include? "dayu20M.pdf"
	# end
	
	# def upload_exe
	# 		self.upload_file_element.when_present.click
	# 		self.ndb_file_upload_input_element.when_present.set 
	# 		self.ndb_file_upload_btn_element.when_present.click
	# 		sleep 1
	# 		self.text.include? "Invalid file "
	# end
	
	def update_task_feedback
	    self.task_feedback_btn_element.when_present.click
			self.select_expertise_element.when_present.select "5"
			self.select_communication_element.when_present.select "5"
			self.select_professionalism_element.when_present.select "5"
	end
	
	def update_km_notes
	    self.km_note_link_element.when_present.click
	    self.km_note_value_element.when_present.clear
	    self.km_note_value_element.when_present.when_present.append "KM NOTES"
	    self.save_km_note_element.when_present.click
	end
	
	# def change_to_selected
	# 	  sleep 2
	# 		self.first_task_checkbox_element.when_present.click
	# 		self.choose_task_action_element.when_present.select "Selected"
	# 		self.update_task_status_element.when_present.click
	# 		sleep 1
	# 		self.text.include? "Change task status successfully. "
	# end
	
	# def change_seleted_to_arranged
	# 	  sleep 2
	# 		self.first_task_checkbox_element.when_present.click
	# 		self.choose_task_action_element.when_present.select "Arranged"
	# 		self.update_task_status_element.when_present.click
	# 		sleep 1
	# 		self.text.include? "It’s cannot be arrange because they have not yet been approved by the Compliance Team. "
	# end
	

	# def sign_ca_no_document
	#     message = self.alert do
	#       self.sign_ca_element.when_present.click
	# 		end
	# end
	

	# def task_list
	# 	  self.task_list_link_element.when_present.click
	# end
	
	# def verify_row_is_red
	#   a = self.verify_row_red_ornot_element.when_present.class_name
	#   puts a
	#     self.verify_row_red_ornot_element.when_present.class_name
	# end
	
	# def delete_completed_project
	#   if self.task_status_element.when_present.text == "Completed"
 #      self.attach_to_window(:title=>"Consultation Projects - Capvision")
 #      message = self.alert do
 #        self.del_project_element.when_present.click
 #      end
 #      message.should == "You can not delete this project, because it has completed tasks."
 #    else
 #      puts "Warning:task status is not complete"
 #    end
	# end
	
	# def select_and_update_task operation
 #    self.select_project_element.when_present.click
 #    self.attach_to_window(:title=>first_project+" - Task List - Capvision")
 #    self.first_task_checkbox_element.when_present.click
 #    self.choose_task_action_element.when_present.select operation
 #    self.update_task_status_element.when_present.click
 #  end
	
	# def verify_high_rate
	#   if self.high_rate_img_element.exists?
	#     puts "this consultant is high rate cost"
	#   else
	#     puts "the currency of consultant rate is not RMB"
	#   end
	# end
	
	# def verify_link_of_send_ca
	#   if self.link_of_send_ca_element.exists?
	#     puts "error:the link of send ca should not on the page when ca is null "
	#   else
	#     puts "case is all right"
	#   end
	# end

  def project_table_list_manager
    self.project_table_list_element[3][3].when_present.text
  end
	
  def project_table_list_client
    self.project_table_list_element[3][5].when_present.text
  end

  def project_table_list_name
    self.project_table_list_element[3][2].when_present.text
  end

  def project_table_list_industry
    self.project_table_list_element[3][13].when_present.text
  end

  def project_table_list_status
    self.project_table_list_element[3][14].when_present.text
  end


  def create_consultation_project project_type
    self.create_consultation_link_element.when_present.click
    hidden_element
    self.create_project_basic_information project_type
    self.project_next_element.when_present.click
    hidden_element
    self.fill_client_contact
    self.fill_project_team
    self.fill_project_requirements
    self.save_consultation_element.when_present.click
  end

  def create_consultation_project_with_ca_client project_type
    self.create_consultation_link_element.when_present.click
    hidden_element
    self.create_project_basic_information project_type
    self.project_next_element.when_present.click
    hidden_element
    self.fill_client_contact_with_ca
    self.fill_project_team
    self.fill_project_requirements
    self.save_consultation_element.when_present.click
  end

  def create_project_basic_information project_type
    self.project_type_element.when_present.select project_type
    self.fill_project_basic_information
  end

  def fill_project_basic_information 
    self.project_name_element.when_present.value="tim_test_consultation_name"
    self.project_client_case_code_element.when_present.value="tim_test_case_code"
    self.project_description_element.when_present.value="tim test project description"
    self.select_industry_element.when_present.select "Aerospace - 航空"
    self.project_consultants_requested_element.when_present.value="2"
    self.project_consultants_expected_element.when_present.value="3"
    self.project_price_element.when_present.value="50"
    self.project_price_currency_element.when_present.select "RMB"
    self.project_time_frame_element.when_present.select "In one month"
  end

  def edit_project_basic_information
    self.edit_project_basic_information_element.when_present.click
    self.fill_project_basic_information
    self.edit_project_basic_information_element.when_present.click
  end

  def fill_client_contact 
    self.project_client_element.when_present.click
    self.select_project_client_element.when_present.click
    self.project_client_contact_element.when_present.click
    self.select_project_client_contact_element.when_present.click
    self.client_project_manager_element.when_present.click
    self.select_client_project_manager_element.when_present.click
    self.project_manager_element.when_present.click
  end

  def fill_client_contact_with_ca
    self.project_client_element.when_present.click
    self.select_project_client_with_ca_element.when_present.click
  end

  def edit_project_client_contact
    self.edit_project_client_contact_element.when_present.click
    self.project_client_contact_element.when_present.click
    self.select_project_client_contact_element.when_present.click
    self.client_project_manager_element.when_present.click
    self.select_client_project_manager_element.when_present.click
    self.edit_project_client_contact_element.when_present.click
  end

  def fill_project_team
    self.project_manager_element.when_present.select "test_km1"
    self.skm_element.when_present.select "Test Skm1"
    self.support_member_element.when_present.click
    self.support_member_element.when_present.clear
    self.select_support_member_element.when_present.click
  end

  def edit_project_team
    self.edit_project_team_element.when_present.click
    self.edit_project_manager_element.when_present.select "Timsheng"
    self.edit_skm_element.when_present.select "Test Skm1"
    self.edit_project_team_element.when_present.click
  end


  def fill_project_requirements
    self.info_requirements_element.when_present.value= "tim test info requirements"
    self.key_questions_element.when_present.value="tim test key questions"
    self.preferred_profiles_element.when_present.value="tim test preferred profiles"
    self.questionnaire_element.when_present.value="tim test questionnaire"
  end

  def edit_project_requirements
    self.edit_project_requirements_element.when_present.click
    self.edit_info_requirements_element.when_present.value="edit tim test info requirements"
    self.edit_key_questions_element.when_present.value="edit tim test key questions"
    self.edit_preferred_profiles_element.when_present.value="edit tim test preferred profiles"
    self.edit_questionnaire_element.when_present.value="edit tim test questionnaire"
    self.edit_project_requirements_element.when_present.click
  end

  def select_first_consultation
    hidden_element
    self.user_filter_element.when_present.click
    self.select_user_element.when_present.click
    self.keywords_element.when_present.value="tim"
    self.search_consultation_element.when_present.click
    self.first_consultation_element.when_present.click
    self.attach_to_window :url=>self.first_consultation_element.href
  end

  def select_first_consultation_with_ca_client
    hidden_element
    self.user_filter_element.when_present.click
    self.select_user_element.when_present.click
    self.client_filter_element.when_present.click
    self.select_ca_client_element.when_present.click
    self.search_consultation_element.when_present.click
    self.first_consultation_element.when_present.click
    self.attach_to_window :url=>self.first_consultation_element.href
  end

  def select_first_consultation_with_compliance
    hidden_element
    self.user_filter_element.when_present.click
    self.select_user_element.when_present.click
    self.client_filter_element.when_present.click
    self.select_compliance_client_element.when_present.click
    self.search_consultation_element.when_present.click
    self.first_consultation_element.when_present.click
    self.attach_to_window :url=>self.first_consultation_element.href
  end

  def upload_project_attachment dir
    hidden_element
    self.project_upload_btn_element.when_present.click
    self.select_upload_file= dir
    self.upload_file_element.when_present.click
  end

  def check_first_task_checkbox
    self.task_list_checkbox_elements[0].when_present.click
  end

  def check_second_task_checkbox
    self.task_list_checkbox_elements[1].when_present.click
  end

  def check_last_task_checkbox
    self.task_list_checkbox_elements[-1].when_present.click
  end

  def filter_by_region
    self.choose_region_element.when_present.select "International.C"
  end

  def search_task
    self.search_task_btn_element.when_present.click
    self.search_task_keywords_element.when_present.value="Ryan"
    self.search_task_btn_element.when_present.click
  end

  def perform_fo
    self.fo_btn_elements[0].when_present.click
    self.confirm_fo_element.when_present.click
  end

  def remove_all_tasks
    self.task_list_thead_checkbox_element.when_present.check
    self.choose_task_action_element.when_present.select "Deleted"
    self.update_task_status_element.when_present.click
  end




end