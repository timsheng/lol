#encoding: utf-8
require File.expand_path 'app/cases/shared/action'
class ProjectHRPage < Lol::Page
  include Action
  page_url "#{$config.host}project/hr/index/index"
  
  #create HR
  link :create_HR, :id=> "project_create_btn"

  #create-page project name
  text_field :HR_name, :id=> "Project_name"

  #create-page project description
  textarea :HR_description, :id=> "Project_description"

  #create-page industry
  select_list :HR_industry, :id=> "industry-selector"

  #create-page consultants requested
  text_field :HR_requested, :id=> "Project_requestedconsultants"

  #create-page consultants expected
  text_field :HR_expected, :id=> "Project_expectedconsultants"

  #create-page price
  text_field :HR_price, :id=> "Project_price"

  #create-page currency
  select_list :HR_currency, :id=> "Project_currencyunit"

  #create-page timeframe
  select_list :HR_timeframe, :id=> "Project_timeframe"

  #create-page next button
  button :HR_next, :id=> "yw1"
	
  #create-page2 choose client
  span :choose_client_input, :xpath=> "//div[@id='s2id_ProjectClient_clientid']/a/span"
  div :choose_client_content, :text=> "Chicago Bulls"


  #create-page2 recruit position
  text_field :recruit_position, :id=> "ProjectHrRecruiting_recruitingposition"

  #create-page2 recruite note
  textarea :recurit_note, :id=> "ProjectHrRecruiting_recruitingnote"

  #create-page2 recruite function
  ul :recruite_function_input, :xpath=> "//div[@id='s2id_ProjectHrRecruiting_functionid']/ul"
  div :recruite_function_content, :text=> "管理 / Management"

  #create-page2 annual salary
  select_list :recruit_salary, :id=> "ProjectHrRecruiting_annualsalary"

  #create-page2 gender require
  select_list :recruit_gender, :id=> "ProjectHrRecruiting_genderrequire"

  #create-page2 gender require
  text_field :recruit_workyear, :id=> "ProjectHrRecruiting_workyear"

  #create-page2 degree require
  select_list :recruit_degree, :id=> "ProjectHrRecruiting_degree"

  #create-page2 job description
  textarea :recruit_job, :id=> "ProjectHrRecruiting_jobdescription"

  #create-page2 save button
  button :recruit_save, :id=> "yw4"

  #project-list view function
  link :view_project, :xpath=> "//div[@id='project-grid']/table/tbody/tr[1]/td[11]/a[1]"

  #edit-project-information  project manager
  select_list :edit_projectmanager, :id=> "Team_pm"
  
  #search by default
  button :search_default, :name=> "yt0"

  #search by users
  span :search_users, :xpath=> "//div[@id='s2id_ProjectSearchForm_userid']/a/span"

  #click to select users
  div :click_users, :text=> "Bobo_team"

  #search by participants
  select_list :search_participants, :id=> "ProjectSearchForm_participant"

  #search by industry
  select_list :search_industry, :id=> "ProjectSearchForm_industryid"

  #search by project status
  select_list :search_status, :id=> "ProjectSearchForm_status"

  #search by keywords--name
  text_field :search_name, :id=> "ProjectSearchForm_keywords"

  #project--list select first project
  checkbox :click_firstproject, :id=> "project-grid_c0_0"

  #project-list select second project
  checkbox :click_secondproject, :id=> "project-grid_c0_1"

  #project status action
  select_list :change_action, :id=> "Action_type"

  #update project status
  link :update_action, :id=> "project_update_btn"

  #change project status to onhold reason
  select_list :onhold_note, :id=> "onhold_note"

  #change project status to onhold save button
  button :onhold_save, :xpath=> "html/body/div[5]/div[3]/div/button[1]"

  #change project status to invalid reason input
  textarea :invalid_note, :id=> "invalid_note"

  #change project status to invalid save button
  button :invalid_save, :xpath=> "html/body/div[5]/div[3]/div/button[1]"

  #task-list-page select first task
  checkbox :click_firsttask, :id=> "task-grid_c0_0"

  #task-list-page select second task
  checkbox :click_secondtask, :id=> "task-grid_c0_1"

  #task status action
  select_list :change_task_action, :id=> "action"

  #update task status
  button :update_task_status, :id=> "task_update_btn"

  #recommend step1 change status
  button :recommend_change_status, :name=> "change-status"

  #recommend step1 next
  button :recommend_next, :text=> "Next"

  #recommend step2 email to
  ul :recommend_email, :xpath=> "//span[2]/div/ul"

  #recommend step2 send email
  button :recommend_sendemail, :id=> "send-email"

  #arrange step1 time
  text_field :arrange_time, :xpath=> "//div/span[2]/span[2]/div/input"

  #srrange step1 change status
  button :arrange_changestatus, :name=> "change-status"

  #project-list page delete icon
  link :delete_project_link, :xpath=> "//div[@id='project-grid']/table/tbody/tr[1]/td[11]/a[2]"

  #project-info page edit basic information
  link :basic_edit_icon, :id=> "hr-basic-edit"

  #peoject-info page edit recruite icon
  link :edit_recruite_icon, :xpath=> "//div[2]/a"

  #project-info page recruite-note input
  textarea :edit_recruite_note, :xpath=> "//textarea[@id='ProjectHrRecruiting_recruitingnote']"

  #project-info page recruite save
  link :edit_recruite_icon1, :id=> "hr-recruitingRequirements-edit"

  #project-info page edit client icon
  link :edit_client_icon, :id=> "hr-clientcontact-edit"
  
  #project-info page select client---cece
  text_field :edit_client_a, :xpath=> "//div[@id='s2id_ProjectClientContact_contactid']/ul/li/input"
  div :edit_client_b, :text=> "ryan"
  
  #project-info edit team icon
  link :team_edit_icon, :id=> "hr-team-edit"
  
  #project-list page click first project
  link :first_hr_project, :xpath=> "//td[2]/a"

  #task-list page add consultant
  link :add_consultant_task, :text=> "Add Consultant"

  #consultants-page search button
  button :search_consultant, :name=> "yt0"

  #consultants-page select consultant
  checkbox :select_first_consultant, :id=> "yw0_c0_0"

  #consultants-page add consultant button
  button :add_consultant_button, :id=> "btn-add-consultant"

  #consultants-page button:go to this project list
  button :go_to_this_project_list, :text=> "Go to this project list"
  
  #click client
  span :click_client, :xpath=> "//div[@id='s2id_ProjectSearchForm_clientid']/a/span"
  #select client name for search
  div :select_client_name_for_search, :text=> "cash"
  #hrs table list
  table :hrs_list, :class=> "items table table-striped"
  #verify hrs project title
  h1 :hrs_project_title, :xpath=> "//h1"
  #the Ok btn
  button :ok_btn, :text=> "Ok"
  #edit km note
  link :edit_km_note, :xpath=> "//td[8]/a"
  #input km notes 
  text_field :input_km_notes, :xpath=> "//div/div/input"
  #save the km notes 
  button :save_km_notes, :xpath=> "//div[2]/button"
  #click consultant link on hrs task list page
  link :consultant_link, :xpath=> "//td[4]/div/a"
  #consultant profile page add point btn
  link :add_points_btn, :id=> "addpoints"
  #hrs task list page client hour link
  link :client_hour_link, :xpath=> "//td[11]/a"
  #input client hour or cash or billing notes
  text_field :input_client_message, :xpath=> "//div/div/input"
  #hrs task list page client cash
  link :client_cash_link, :xpath=> "//td[12]/a"
  #save the client hour or cash or billing notes 
  button :save_client_message, :xpath=> "//div[2]/button"
  #hrs task list page billing notes
  link :client_billing_notes_link, :xpath=> "//td[15]/a"
  #client error info 
  div :client_error_info, :xpath=> "//div[3]/div/div/div"
  #client cash or hour must be number 
  div :cash_hour_verify, :xpath=> "//form/div/div[2]"
  ##consultant page input consultant name
  text_field :input_consultant_name, :id=> "keywords"
  
  
  
  
  
  def edit_basicinfo
    self.basic_edit_icon_element.when_present.click
    sleep 2
    self.HR_description= "edit basic information1"
    #set
    self.basic_edit_icon_element.when_present.click
    sleep 2
  end
  #编辑基本信息
  def edit_recruite
    hidden_element  
    sleep 1
    self.edit_recruite_icon_element.when_present.click
    sleep 2
    self.edit_recruite_note_element.when_present.set "edit recruite note"
    self.edit_recruite_icon1_element.when_present.click
    end
  #编辑recruite的信息
  def edit_client
    self.edit_client_icon_element.when_present.click
    sleep 3
    self.edit_client_a_element.when_present.click
    sleep 1
    self.send_keys :enter
    #self.edit_client_b_element.when_present.click
    sleep 2
    self.edit_client_icon_element.when_present.click
    sleep 2
  end
  #编辑client的信息
  def goto_project
    self.search_default_element.click
    self.first_hr_project_element.when_present.click
  end

  def add_consultant
      self.add_consultant_task_element.when_present.click
      self.input_consultant_name_element.when_present.append "Han"
      self.search_consultant_element.when_present.click
      sleep 2
      a = self.select_first_consultant_element.exist?
        if a.to_s == "true"
            puts "顾问添加完成"
      else
            puts "顾问添加失败！"
      end
	self.select_first_consultant_element.when_present.click
    self.add_consultant_button_element.when_present.click
    self.go_to_this_project_list_element.when_present.click
  end

	
	#ryan
	link :delete_HR, :xpath=>'//div[3]/div/div/form/div[2]/table/tbody/tr[1]/td[11]/a[2]/i'

	# :cancel_delete_HR

	button :step1_next, :id=>"yw1"
	button :step2_save, :id=>"yw4"
	text_field :edit_consultants_requested, :id=>"Project_requestedconsultants"
	text_field :edit_consultants_expected, :id=>"Project_expectedconsultants"
	text_field :edit_project_price, :id=>"Project_price"
	link :step1_cancel, :class=>"btn btn-error"
	text_field :edit_step2_workyear, :id=>"ProjectHrRecruiting_workyear"
	link :select_project, :xpath=> "//td[2]/a"
	button :button_search, :name=> "yt0"
	link :project_info, :xpath=> "//div[3]/div/div/ul/li[2]/a"
	link :task_list, :xpath=>"//div[3]/div/div/ul/li[1]/a"
	element :basic_info_edit_icon, :i, :xpath=>"//div[1]/a/i"
	link :recruiting_edit_icon, :xpath=>"//div[2]/a/i"
	link :client_contact_namelink, :xpath=>"//div[3]/div/div/div/div[2]/div/span[1]/a"
  	link :project_list_update, :id=>"project_update_btn"
  	select_list :choose_action, :id=>"Action_type"
	checkbox :hr_checkbox0, :id=> "project-grid_c0_0"
  	button :popup_save, :class=>"ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
  	link :consultant0, :xpath=>"//td[4]/div/a"
  	text_field :task_id, :xpath=>"//div[2]/div/div/form/div/div/div[1]/div[1]/div[2]/div[1]/span[2]/input"
  	button :task_change_status, :id=>"change-status"
  	button :task_cancel, :xpath=>"//div/div/div[2]/div[2]/input[3]"
  	button :task_next, :value=>"Next"
  	button :task_previous, :value=>"Previous"
	link :task_arrange_consultant_link, :xpath=>"//div[2]/div/div/form/div/div/div[1]/div[1]/div[1]/span[2]/a"
	text_field :arrange_date, :xpath=>"//div/div/div[1]/div[2]/input[2]"
	text_field :arrange_date_time, :xpath=> "//div/div/div[1]/div[1]/div[2]/div[1]/span[2]/span[2]/div/input"
	button :send_arranged_email, :value=>"Send Email To Client"
	img :high_rate, :xpath=>"//tr[1]/td[4]/div/img"
	
	# "div[2]/div/div/form/div/div/div[2]/div[1]/div[3]/span[2]/div/ul"

	#ryan选取客户及联系人--------------------------------------------------------
	def select_client
    	self.click_client_element.when_present.click 
   	 	self.choose_client_element.when_present.click
    	self.click_contact_element.when_present.click
    	self.choose_contact_element.when_present.click
  	end
 	span :click_client, :xpath=> "//div[@id='s2id_ProjectClient_clientid']/a/span"
 	div :choose_client, :text=> "Chicago Bulls"
  	text_field :click_contact, :xpath=> "//li/input"
  	div :choose_contact, :text=> "ryan"
  	#ryan清空所有已填寫的數據-----------------------------------------------------
  	def clear_basic
  	  self.clear_name_element.when_present.clear
  	  self.clear_description_element.when_present.clear
  	  self.clear_startdate_element.when_present.clear
  	  self.clear_industry_element.when_present.select "--Please choose--"	
  	end
  	text_field :clear_name, :id=>"Project_name"
  	text_field :clear_description, :id=>"Project_description"
  	text_field :clear_startdate, :id=>"Project_starttime"
  	select_list :clear_industry, :id=>"industry-selector"
  	#ryan上传文档-------------------------------------------------------------------
	def upload_exe
	  self.upload_file_element.when_present.click
	  self.ndb_file_upload_input_element.when_present.set File.expand_path(File.join('.'),'app/attachment/EXE.exe')
	  self.ndb_file_upload_btn_element.when_present.click
	  sleep 1
	  self.text.include? "Invalid file "
	end
	#upload file
  	element :upload_file ,:i ,:xpath=> "//form/div[2]/table/tbody/tr[1]/td[18]/a/i"
  	#ndb file upload input
  	file_field :ndb_file_upload_input ,:id=> "ndb-file-upload-input"
  	#ndb file upload upload btn
  	button :ndb_file_upload_btn ,:id=> "ndb-file-upload-upload-btn"
  	def upload_dayu20m
	  self.upload_file_element.when_present.click
	  self.ndb_file_upload_input_element.when_present.set File.expand_path(File.join('.'),'app/attachment/dayu20M.pdf')
	  self.ndb_file_upload_btn_element.when_present.click
	  sleep 1
	  self.text.include? "dayu20M.pdf"
	end
	def upload_docnormal
	  self.upload_file_element.when_present.click
	  self.ndb_file_upload_input_element.when_present.set File.expand_path(File.join('.'),'app/attachment/doc_normal.docx')
	  self.ndb_file_upload_btn_element.when_present.click
	  sleep 1
	  self.text.include? "doc_normal"
	end

  def delete_project
    project_name = first_project
    if project_name.include? "AT-HR-project1" 
        message = self.alert do
          self.delete_project_link_element.when_present.click
    end
        message.should == "Are you sure you wish to delete this project?"
    else
      puts "There is no new project to delete."
      end
  end
  #删除
  
  def hrs_table_list_status
    self.hrs_list_element[3][4].text
  end
  
  def goto_hrs_task_list_page
    self.search_default
    self.first_hr_project_element.when_present.click
    self.attach_to_window(:title=>self.first_project+" - Task List - Capvision")
  end
  
  def recommend_emailselect
    self.send_keys :enter
  end
  
end

