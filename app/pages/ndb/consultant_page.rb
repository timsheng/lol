#encoding: utf-8
require File.expand_path 'app/cases/shared/action'
class ConsultantPage < Lol::Page
  include Action

  page_url "#{$config.host}search/newsearch/consultant"

  # create consultant page locator
  # ----
  # ----
  #add consultant link
  link :add_consultant ,:text=> "Create Consultant"

  #enroll checkbox
  checkbox :enroll_db, :id=> "NewlifeForm_enrollToDB"

  #consultant origin
  select_list :consultant_origin, :id=> "NewlifeForm_origin_id"

  #origin value
  text_field :originValue, :id=> "origin_value"

  #consultant gender
  radio_button :consultant_gender, :id=> "NewlifeForm_gender_0"

  #consultant firstname
  text_field :consultant_firstname, :id => "NewlifeForm_firstName"

  #consultant lastname
  text_field :consultant_lastname, :id=> "NewlifeForm_lastName"

  #consultant nickname
  text_field :consultant_nickname, :id=> "NewlifeForm_nickName"

  #consultant type
  select_list :consultant_type, :id=> "NewlifeForm_type"

  #consultant adeptlanguage
  unordered_list :consultant_adeptlanguage, :xpath=> "//div[@id='s2id_NewlifeForm_adeptLanguage']/ul"

  #adeptlanguage value
  div :adeptlanguage_value, :xpath=>"//ul[@class='select2-results']/li[3]/div"

  #consultant rate
  text_field :consultant_rate, :id=>"NewlifeForm_rate"

  #rate currency
  select_list :rate_currency, :id=>"NewlifeForm_currency"

  #email
  text_field :email, :id=> "NewlifeForm_email"

  #mobile
  text_field :mobile, :id=> "NewlifeForm_mobile"

  #area code
  text_field :area_code, :id=> "NewlifeForm_telephoneAreacode"

  #telephone
  text_field :telephone, :id=> "NewlifeForm_telephoneNumber"

  #ext
  text_field :ext, :id=> "NewlifeForm_telephoneExtension"

  #weixin
  text_field :wechat, :id=> "NewlifeForm_wechat"

  #linkedin
  text_field :linkedin, :id=> "NewlifeForm_linkedin"

  #submit consultant
  button :submit, :id=>"newlife-submit"

  #cancel consultant
  link :cancel, :href=> "/search/default/consultant"

  #first name
  text_field :first_name,:id=>"Consultant_firstname"

  #company
  text_field :company ,:id=>"company-selector"

  #company available
  link :company_available, :xpath=>"(//li[@class='ui-menu-item'][1]/a)[1]"

  #position
  text_field :position, :id=>"ConsultantPosition_positionLabel"

  #position_available
  link :position_available,:xpath=>"(//li[@class='ui-menu-item'][1]/a)[2]"

  #start date year
  # select_list :start_date_year,:id=>"ExperienceForm_startdateYear"

  #start date month
  # select_list :start_date_month,:id=>"ExperienceForm_startdateMonth"

  #is current?
  # checkbox :current,:id=>"Current"

  #responsibility
  # textarea :responsibility, :id=>"ExperienceForm_responsibility"

  #save experience
  button :save_experience,:name=>"yt0"

 #function div
  link :function, :class=>"select2-choice"

  #select consultant function
  div :function_value, :xpath=>"//ul[@class='select2-results']/li[3]/div"
  
  #consultant location 
  div :consultant_location, :id=>"location-selector"
  
  #select consultant location
  link :select_consultant_location, :xpath=>"//ul[@id='dlgPlaceContent']/li[1]/a"

  #-----
  #-----
  #consultant creatation page locator



  #search button
  # button :search, :name=>"yt0"

  #keywords field
  # text_field :keywords_field, :id=>"keywords"

  #first consultant
  link :first_consultant,:xpath=>"//tr/td/div/div[1]/div/a"

  #edit basic information
  element :edit_basic_information,:i,:xpath=>"//a[@id='consultant-basic-edit']/i"

  #edit background expertise
  element :edit_background_expertise,:i,:xpath=>"//a[@id='consultant-background-edit']/i"

  #background
  text_area :background,:id=>"ConsultantBackground_background"

  #expertise
  text_area :expertise,:id=>"ConsultantBackground_expertise"

  #edit general comment
  element :edit_general_comment,:i,:xpath=>"//a[@id='consultant-generalcomment-edit']/i"

  #general comment
  text_area :general_comment,:id=>"Consultant_generalcomment"

  #add work experience
  element :add_work_experience,:i,:xpath=>"//a[@id='consultant-experience-edit']/i"

  #add education
  element :add_education,:i,:xpath=>"//a[@id='consultant-school-edit']/i"

  #school name
  text_field :school_name,:id=>"ConsultantSchool_name"

  #school name available
  link :school_available,:xpath=>"(//li[@class='ui-menu-item'][1]/a)[1]"

  #school major
  text_field :school_major,:id=>"ConsultantSchool_major"

  #school degree
  select_list :school_degree, :id=>"ConsultantSchool_degree"

  #school start year
  select_list :school_start_year, :id=>"ConsultantSchool_startyear"

  #school end year
  select_list :school_end_year, :id=>"ConsultantSchool_endyear"

  #save education
  button :save_education,:id=>"yw0"

  #edit resume box
  element :edit_resume_box,:i,:xpath=>"//a[@id='consultant-resumebox-edit']/i"

  #resume box content
  text_area :resume_box_content,:id=>"Consultant_resumebox"

  #select resume
  file_field :select_resume,:id=>"ndb-file-upload-input"

  #upload resume button
  button :upload_resume_button,:id=>"ndb-file-upload-upload-btn"

  #consultant status
  span :consultant_status, :id=>"consultant_status"

  #enroll link
  link :enroll_link, :xpath=>"//ul[@id='consultant_status_dropdown']/li[1]/a"

  #blacklist link
  link :blacklist_link, :xpath=>"//ul[@id='consultant_status_dropdown']/li[2]/a"

  #blacklist reason
  radio_button :blacklist_reason, :id=>"consultant_blacklist_reason_1"

  #save blacklist
  span :save_blacklist, :xpath=>"(//span[@class='ui-button-text' and contains(text(),'OK')])[2]"

  #edit warning bar
  element :edit_warning_bar,:i,:xpath=>"//div[@id='warning-bar']/span/i"

  #warning bar
  text_field :warning_bar,:id=>"warning_bar_content"

  #edit tag
  # text_field :tag,:id=>"consultant-tag-name"

  #save tag
  # element :save_tag,:i,:xpath=>"//a[@id='consultant-tag-enter-save']/i"

  #contact view
  link :contact_view, :id=>"contact-view-link"

  #add mobile
  element :add_mobile,:i,:id=>"btn-add-1"

  #mobile phone
  text_field :mobile_phone,:id=>"Contact_mobilephone"

  #save mobile phone
  element :save_mobile_phone,:i,:xpath=>"//div[@class='row-fluid']/div[3]/div/div/i"
  
 #invalid mobile
  element :invalid_mobile,:i,:xpath=>"//div[@class='row-fluid']/div[3]/div/div/i[2]"

  #add telephone button
  element :add_telephone_button,:i,:id=>"btn-add-2"

  #contact telephone
  text_field :contact_telephone, :id=>"Contact_telephone"

  #invalid telephone
  element :invalid_telephone,:i,:xpath=>"//div[@class='row-fluid']/div[3]/div/div/i[2]"

  #save telephone
  element :save_telephone,:i,:xpath=>"//div[@class='row-fluid']/div[3]/div/div/i"

  #add email
  element :add_email,:i,:id=>"btn-add-9"

  #contact email
  text_field :contact_email,:id=>"Contact_other"

  #save_email
  element :save_email,:i,:xpath=>"//div[@class='row-fluid']/div[3]/div/div/i"

  #delete email
  element :invalid_email,:i,:xpath=>"//div[@class='row-fluid']/div[3]/div/div/i[2]"

  #add weixin button
  element :add_weixin_button,:i,:id=>"btn-add-10"

  #weixin
  text_field :weixin,:id=>"Contact_other"

  #save weixin
  element :save_weixin,:i,:xpath=>"//div[@class='row-fluid']/div[3]/div/div/i"

  #invalid weixin
  element :invalid_weixin,:i,:xpath=>"//div[@class='row-fluid']/div[3]/div/div/i[2]"

  #identity view link
  link :identity_view_link, :id=>"identity-view-link"

  #add identity btn
  element :add_identity_btn, :i ,:xpath=>"//a[@id='add-identity-btn']/i"

  #identity card type
  select_list :identity_card_type, :id=>"identity_type"

  #identity card number
  text_field :identity_card_number, :id=>"identity_value"

  #save identity btn
  element :save_identity_btn , :i, :xpath=>"//a[@id='save-identity-btn']/i"

  #delete identity btn
  element :delete_identity_btn, :i, :xpath=>"//a[@id='delete-identity-btn']/i"

  #note
  text_area :note,:id=>"note-text"

  #save note
  button :save_note,:id=>"note-submit"

  #request tab
  link :request_tab,:xpath=>"//ul[@id='yw7']/li[6]/a"

  #request type
  select_list :request_type,:id=>"ConsultantRequest_type"

  #request message
  text_area :request_message,:id=>"ConsultantRequest_message"

  #submit request
  button :submit_request,:name=>"yt0"

  #finance tab
  link :finance_tab,:xpath=>"//ul[@id='yw7']/li[7]/a"

  #debug profile tab
  # link :profile_tab,:xpath=>"//*[@id='yw6']/li[1]/a"

  #edit payment method
  element :edit_payment_method,:i,:xpath=>"//div/a/i"

  #payment type
  select_list :payment_type,:id=>"ConsultantFiancial_type"

  #add bank card
  link :add_bank_card,:id=>"add-bank-account-btn"

  #china bank
  radio_button :china_bank,:id=>"ConsultantBankAccount_bank_type_0"

  #bank account name
  text_field :bank_account_name,:id=>"ConsultantBankAccount_accountname"

  #china bank name
  link :china_bank_name,:xpath=>"//div[@id='s2id_ConsultantBankAccount_bankid']/a"
  
  #select bank name
  div :select_bank_name,:text=>"招商银行"

  #bank account number
  text_field :bank_account_number,:id=>"ConsultantBankAccount_accountnumber"

  #other information
  text_area :other_information,:id=>"ConsultantBankAccount_otherinformation"

  #save bank information
  link :save_bank_information,:id=>"add-bank-account-btn"

  #international bank
  radio_button :international_bank, :id=>"ConsultantBankAccount_bank_type_1"

  #international bank name
  text_field :international_bank_name,:id=>"ConsultantBankAccount_bankname"

  #bank location
  link :bank_location, :xpath=>"//div[@id='s2id_ConsultantBankAccount_bank_location']/a"

  #select bank location
  div :select_bank_location, :text=>"Algeria"

  #bank identifier type
  radio_button :bank_identifier_type, :id=>"ConsultantBankAccount_bank_identifier_type_1"

  #bank identifier
  text_field :bank_identifier, :id=>"ConsultantBankAccount_bank_identifier"

  #bank beneficiary address
  text_field :bank_beneficiary_address, :id=>"ConsultantBankAccount_address"

  #edit gifts card
  element :edit_gifts_card,:i,:xpath=>"//div[@class='container-fluid']/div/div/div[2]/div[3]/a/i"

  #select gasoline card
  checkbox :gasoline_card,:id=>"ConsultantFinance_gaslinecard"

  #edit donate information
  element :edit_donate_information,:i,:xpath=>"//div[@class='container-fluid']/div/div/div[2]/div[4]/a/i"
  
  #donate account name
  text_field :donate_account_name,:id=>"ConsultantFinance_accountname"

  #donate website
  text_field :donate_website,:id=>"ConsultantFinance_website"

  #interest tab
  link :interest_tab,:xpath=>"//ul[@id='yw7']/li[8]/a"

  #edit interest button
  link :edit_interest_button,:id=>"edit-interest-btn"

  #capvision expert exchanges
  checkbox :capvision_expert_exchanges,:id=>"service_0"

  #ipo newsletters
  checkbox :ipo_newsletters,:id=>"service_1"

  #monthly investment reports
  checkbox :monthly_investment_reports,:id=>"service_2"

  #prefer email
  checkbox :prefer_email,:id=>"contact_0"

  #preder phone
  checkbox :prefer_phone,:id=>"contact_1"

  #preder sms
  checkbox :preder_sms,:id=>"contact_2"

  #im
  checkbox :im,:id=>"contact_3"

  #project interviews
  checkbox :project_interviews,:id=>"business_0"

  #industry networking
  checkbox :industry_networking,:id=>"business_1"

  #career opportunities
  checkbox :career_opportunities,:id=>"business_2"

  #business deals
  checkbox :business_deals,:id=>"business_3"

  #fundraising
  checkbox :fundraising,:id=>"business_4"

  #save interest
  button :save_interest,:id=>"yw0"

  #compliance tab
  link :compliance_tab,:xpath=>"//ul[@id='yw7']/li[5]/a"

  #open upload prompt
  link :open_upload_prompt,:class=>"upload-compliance"

  #select attachment
  file_field :select_attachment,:id=>"ndb-file-upload-input"

  #upload attachment
  button :upload_attachment,:id=>"ndb-file-upload-upload-btn"

  #send email dropdownlist
  link :send_email_dropdownlist, :id=>"yw3"

  #send introduction link
  link :send_introduction_link,:text=>"Send Introduction"

  #send introduction button
  button :send_introduction_button,:id=>"yw0"

  #delete resume
  element :delete_resume,:i,:xpath=>"(//a[@class='consultant-delete-resume']/i)[1]"

  #consultant status
  # link :consultant_status,:class=>"btn dropdown-toggle btn-success btn-inverse"

  #status value
  # link :status_value,:text=>"Enrolled"

  #add address
  element :add_address_button,:i,:id=>"add-address-btn"

  #input address
  text_area :address,:id=>"address-text"

  #save address
  element :save_address,:i,:id=>"save-address"

  #set unmain address
  element :set_unmain_address, :i, :xpath=>"//div[@id='address-content']/div/i[1]"

  #delete address
  element :delete_address,:i,:xpath=>"//div[@id='address-content']/div/i[3]"
  
  #edit address
  element :edit_address,:i,:xpath=>"//div[3]/div/div[2]/div[5]/div/div/span[3]/div/div[1]/i[2]"

  #set contact
  # element :set_contact,:i,:xpath=>"//div[3]/div/div[2]/div[5]/div/div/span[3]/div/div[1]/i[1]"

  #add other contact button
  # button :add_other_contact_button,:id=>"btn-add-other"

  #other contact
  # text_field :other_contact,:id=>"Contact_other"

  #save other contact
  # element :save_other_contact,:i,:xpath=>"//div[@id='contact-content-other']/div/div[2]/div/i"

  #points links
  link :points, :id=> "consultant-points"

  #relationship tab
  # link :relationship_tab, :xpath=>"//ul[@id='yw6']/li[3]/a"  

  #relationship project tab
  # link :relationship_project_tab,:xpath=>"//ul[@id='yw1']/li[2]/a"
  # link :project_relationship, :href=> "/consultant/dynamic/project?id=200"

  #relationship communication tab
  # link :relationship_communication_tab,:xpath=>"//ul[@id='yw1']/li[3]/a"

  #relationship request tab
  # link :relationship_request_tab,:xpath=>"//ul[@id='yw1']/li[4]/a"

  #relationship compliance tab
  # link :relationship_compliance_tab,:xpath=>"//ul[@id='yw1']/li[5]/a"

  #relationship point tab
  # link :relationship_point_tab,:xpath=>"//ul[@id='yw1']/li[6]/a"

  #points tab
  link :points_tab,:xpath=>"//ul[@id='yw7']/li[10]/a"

  #points income tab
  link :points_income_tab,:xpath=>"//ul[@id='yw1']/li[2]/a"

  #points spent tab
  link :points_spent_tab,:xpath=>"//ul[@id='yw1']/li[3]/a"

  #communications tab
  # link :communications_tab,:xpath=>"//ul[@id='yw6']/li[4]/a"

  #communications email tab
  # link :communications_email_tab,:xpath=>"//ul[@id='yw8']/li[1]/a"

  #communications phone tab
  # link :communications_phone_tab,:xpath=>"//ul[@id='yw8']/li[2]/a"

  #communications sms tab
  # link :communications_sms_tab,:xpath=>"//ul[@id='yw8']/li[3]/a"

  #projects tab
  link :projects_tab,:xpath=>"//ul[@id='yw7']/li[2]/a"

  #projects consultations tab
  link :projects_consultations_tab,:xpath=>"//ul[@id='yw8']/li[1]/a"

  #projects data tab
  link :projects_data_tab,:xpath=>"//ul[@id='yw8']/li[2]/a"

  #projects ges tab
  link :projects_ges_tab,:xpath=>"//ul[@id='yw8']/li[3]/a"

  #projects conference tab
  link :projects_conference_tab,:xpath=>"//ul[@id='yw8']/li[4]/a"

  #projects hrs tab
  link :projects_hrs_tab,:xpath=>"//ul[@id='yw8']/li[5]/a"

  #online link
  link :online_link,:text=>"Online"

  #tnc template
  select_list :tnc_template,:id=>"EmailTemplate_name"

  #submit tnc
  button :submit_tnc,:id=>"compliance-send-submit"

  #cancel tnc
  # link :cancel_tnc,:text=>"Cancel"

  #add points
  link :add_points,:id=>"addpoints"

  #click points button
  span :btn_add,:xpath=>"(//span[@class='ui-button-text' and contains(text(),'Add')])[2]"

  #input points
  text_field :txt_points,:id=>"points"

  #input reason
  text_area :txt_reason,:id=>"points-reason"

  #click points cancel
  # button :btn_cancel,:xpath=>"//div[8]/div[3]/div/button[2]"
 
  #select consultant team 
  # select_list :select_consultant_team, :id=>"consultant-team"
  
  #select consultant industry 
  # select_list :select_consultant_industry, :id=>"consultant-industry"
  
  #select consultant subindustry 
  # select_list :select_consultant_subindustry, :id=>"consultant-subindustry"
  
  #select consultant type
  # select_list :select_consultant_type, :id=>"type"
  
  #select consultant status
  # select_list :select_consultant_status, :id=>"status"
  
 
  
  #select consultant panel
  # select_list :select_consultant_panel, :id=>"panelid"
  
  #more filter link
  # link :click_more_filter, :id=>"more-filter-link"
  
  #pack up link
  # link :click_up_link, :id=>"pack-up-link"
  
  #company size min
  # text_field :input_company_sizemin, :id=>"sizeMin"
  
  #company size max
  # text_field :input_company_sizemax, :id=>"sizeMax"
  
  #company revenueMin
  # text_field :input_company_revenuemin, :id=>"revenueMin"
  
  #conpany revenueMax
  # text_field :input_company_revenuemax, :id=>"revenueMax"
  
  #search keywords
  # text_field :input_keywords, :id=>"keywords"
  
  #click select keyword type button
  # link :select_keyword_type_btn, :xpath=>"//span/div/a"
  
  #select keyword type name
  # link :select_keyword_type_name, :text=>"Name"
  
  #select keyword type name
  # link :select_keyword_type_company, :xpath=>"//span/div/div/ul/li[3]/a"
  
  #first company
  # td :first_company, :xpath=>"//tr/td[6]"
  
  #select keyword type name
  # link :select_keyword_type_position, :xpath=>"//span/div/div/ul/li[4]/a"
  
  #first position
  # td :first_position, :xpath=>"//tr/td[7]"
  
  #select keyword type name
  # link :select_keyword_type_background, :xpath=>"//span/div/div/ul/li[5]/a"
  
  #first background
  # div :first_background, :xpath=>"//tr/td[4]/div"
  
  #select keyword type name
  # link :select_keyword_type_expertise, :xpath=>"//span/div/div/ul/li[6]/a"
  
  #first expertise
  # div :first_expertise, :xpath=>"//tr/td[5]/div"
  
  #select keyword type name
  # link :select_keyword_type_tag, :xpath=>"//span/div/div/ul/li[7]/a"
  
  #select keyword type name
  # link :select_keyword_type_notes, :xpath=>"//span/div/div/ul/li[8]/a"
  
  #first notes
  # td :first_notes, :xpath=>"//tr/td[12]"
  
  #select keyword type name
  # link :select_keyword_type_school, :xpath=>"//span/div/div/ul/li[9]/a"
  
  #select keyword type name
  # link :select_keyword_type_comment, :xpath=>"//span/div/div/ul/li[10]/a"
  
  #select keyword type name
  # link :select_keyword_type_resume, :xpath=>"//span/div/div/ul/li[11]/a"
  
  #click link more/pick up
  # link :more_pick_up ,:class=>"show-more-note"

  #set main note
  element :set_main_note,:i,:xpath=>"//div[@class='note-block']/div[1]/div[4]/i[1]"

  #delete note
  element :delete_note,:i,:xpath=>"//div[@class='note-block']/div[1]/div[4]/i[2]"

  #set main bank
  button :set_main_bank,:name=>"yt0"

  #delete bank
  element :delete_bank,:i,:xpath=>"//div[@id='bank-account-view']/div[1]/a[1]/i"

  #delete education
  element :delete_education ,:i,:class=>"icon-trash cap-icon"

  #cancel experience
  link :experience_cancel ,:id=>"consultant-experience-cancel"

  #cancel education
  link :education_cancel ,:id=>"consultant-school-cancel"

  #link to consultant profile page
  # link :link_consultant_profile_page, :xpath=>"//tr/td[11]/a"
  
  #h1 text
  # h1 :h1_text, :xpath=>"//h1"
  
  #h3 text
  h3 :h3_text,:xpath=>"//div[@class='row-fluid']/div/div[2]/h3[1]"
  
  #the text of consultant rate
  # link :text_of_consultant_rate, :id=>"consultant_rate"
  
  #input rate
  # text_field :input_rate, :xpath=>"//div/div/input"
  
  #click save rate
  # button :save_rate, :xpath=>"//div/div/button"
  
  #verify rate alert
  # div :verify_rate_alert, :xpath=>"//form/div/div[2]"
  
  #T&C link
  link :tnc_link, :xpath=>"//a[contains(text(),'T&C')]"
  
  #select consultant ryan
  # link :select_consultant_ryan, :xpath=>"//tr[6]/td/div/a"
  
  #company link 
  # link :click_company_link, :xpath=>"//div[2]/div/div/div/div/div[2]/a"
  
  #click position link
  # link :click_position_link, :xpath=>"//div[4]/div/div[2]/a"
  
  #click school link
  # link :click_school_link, :xpath=>"//a[contains(text(),'清华大学')]"
  
  #click notes mark
  # element :notes_mark, :i ,:xpath=>"//div[6]/div/div/div/div[4]/i"
  
  # #history list
  # element :history_list, :i ,:xpath=>"//h3/i"
  
  # add to project btn
  link :add_to_project, :id=>"yw2"

  # input project name
  text_field :input_project_name , :class=>"select2-input select2-default"

  # first project name
  div :first_project_name, :xpath=>"(//ul[@class='select2-result-sub']/li/div)[1]"

  # add consultant to project btn
  span :add_consultant_to_project_btn,:xpath=>"(//span[@class='ui-button-text' and contains(text(),'Add')])[1]"
  
  #stay button
  span :stay_btn, :xpath=>"//span[@class='ui-button-text' and contains(text(),'Stay')]"

  # #click cancel btn
  # button :click_cancel_btn, :text=>"Cancel"
  
  # #click the first tnc link
  # link :click_first_tnc, :xpath=>"//tr/td/span/a"
  
  # #click panel
  # link :click_panel, :xpath=>"//div/span[2]/div/a"
  
  # #contact solid star alert
  # element :contact_solid_star_alert, :i ,:xpath=>"//div[5]/div[3]/div/div/i"
  
  # #address solid star alert
  # element :address_solid_star_alert, :i ,:xpath=>"//div/div/span[3]/div/div[2]/i"

  

  def create_consultant
    self.create_consultant_basic_information
    self.create_consultant_contact_information
    self.create_consultant_work_experience
    self.submit
  end

  def create_consultant_basic_information
    self.consultant_firstname= "jun"
    self.consultant_lastname= "wei"
    self.consultant_nickname= "xiaovv"
    self.consultant_adeptlanguage_element.click
    self.adeptlanguage_value_element.when_present.click
    self.select_consultant_gender
    self.consultant_type='Qualified'
    self.consultant_location_element.click
    self.select_consultant_location_element.when_present.click
    self.consultant_rate = "200"
    self.rate_currency = "USD"
    self.consultant_origin='Events'
    self.originValue_element.when_present.append "eventTest"
  end

  def create_consultant_contact_information
    self.email = "weijun0609#{rand(1000000)}@163.com"
    self.mobile = "159181#{rand(1000000)}"
    self.area_code = "021"
    self.telephone = "3567240"
    self.ext = "2222"
    self.wechat = "weasly"
    self.linkedin = "weasly111"
  end

  def create_consultant_work_experience
    self.company_element.when_present.append "test"
    self.company_available_element.when_present.click
    self.position_element.when_present.append "test"
    self.position_available_element.when_present.click
    self.function
    self.function_value_element.when_present.click
    # self.start_date_year_element.when_present.select "2014"
    # self.start_date_month_element.when_present.select "2"
    # self.check_current
    # self.responsibility = "tim test responsibility"
    self.save_experience_element.when_present.click
  end



  def select_first_consultant
    hidden_element
    self.keywords_field_element.when_present.value="测试"
    self.search
    self.first_consultant_element.when_present.click
    self.attach_to_window :url=>self.first_consultant_element.href
  end

  def edit_basic_information
    hidden_element
    self.edit_basic_information_element.click
    self.first_name_element.when_present.value= 'AT测试顾问1号'
    self.edit_basic_information_element.click
  end



  def edit_background_expertise
    hidden_element
    self.edit_background_expertise_element.click 
    self.background_element.when_present.value="AT测试中文背景"
    self.expertise_element.when_present.value="AT测试中文特长"
    self.edit_background_expertise_element.click 
  end

  def edit_generalcomment
    hidden_element
    self.edit_general_comment_element.click
    self.general_comment_element.when_present.value="AT测试generalcomment"
    self.edit_general_comment_element.click
  end

  # def add_experience
  #   hidden_element
  #   self.add_work_experience_element.click
  #   self.company_element.when_present.set "测试公司_junwei"
  #   self.company_available_element.when_present.click
  #   self.position_element.when_present.set "测试职位_junwei"
  #   self.position_available_element.when_present.click
  #   self.start_date_year_element.when_present.select "2014"
  #   self.start_date_month_element.when_present.select "2"
  #   self.check_current
  #   self.save_experience_element.when_present.click
  # end

  def create_education
    hidden_element
    self.add_education_element.click
    self.school_name_element.when_present.value = "AT测试大学"
    self.school_available_element.when_present.click
    self.school_major = "计算机科学与技术"
    self.school_degree = "Undergraduate / 本科"
    self.school_start_year = "2010"
    self.school_end_year = "2014"
    self.save_education
  end

  # def edit_education
  #   hidden_element
  #   self.edit_education_element.click
  #   sleep 2
  #   self.school_name = "修改后的AT测试大学"
  #   sleep 2
  #   self.school_name_available
  #   self.save_education
  # end


  def edit_resumebox
    hidden_element
    self.edit_resume_box_element.click
    self.resume_box_content_element.when_present.value = "AT测试resumebox"
    self.edit_resume_box_element.click
  end

  def upload_resume
    hidden_element
    self.select_resume = File.expand_path(File.join('.'),'app/attachment/sprint1.docx')
    self.upload_resume_button
  end

  def change_consultant_status
    hidden_element
    self.consultant_status_element.when_present.click
    self.blacklist_link_element.when_present.click
    self.select_blacklist_reason
    self.save_blacklist
  end

  def recovery_consultant_status
    hidden_element
    self.consultant_status_element.when_present.click
    self.enroll_link_element.when_present.click
  end

  def edit_warningbar
    hidden_element
    self.edit_warning_bar_element.click
    self.warning_bar_element.when_present.value = "ATwarning bar测试"
    self.edit_warning_bar_element.click
  end

  # def edit_tag
  #   hidden_element
  #   self.tag = "ATtag测试#{rand(100)}"
  #   self.save_tag_element.click
  # end

  def add_mobile
    self.add_mobile_element.when_present.click
    self.mobile_phone_element.when_present.value = "1590#{rand(9)}#{rand(9)}7#{rand(9)}954"
    self.save_mobile_phone_element.when_present.click
  end

  def add_note
    hidden_element
    self.note = "AT测试notes#{rand(100)}"
    self.save_note
  end

  def add_address
    self.add_address_button_element.when_present.click
    self.address_element.when_present.value="上海市闸北区恒丰路439号"
    self.save_address_element.when_present.click
  end

  #need be updated later
  # def tnc_email
  #   @browser.window(:title=>first_project+" - Capvision").when_present.use do
  #     @browser.link(:xpath, "//ul[@id='yw6']/li[5]/a").when_present.click
  #     if  @browser.link(:xpath, "//tr[1]/td[4]/span/a[3]").exist?
  #       if @browser.link(:xpath, "//tr[1]/td[4]/span/a[3]").text == "Email"
  #          @browser.link(:xpath, "//tr[1]/td[4]/span/a[3]").when_present.click
  #          @browser.textarea(:id, "compliance_message").when_present.set "AT测试email msg"
  #          @browser.button(:id, "compliance-send-submit").when_present.click
  #         elsif  @browser.link(:xpath,"//tr[1]/td[4]/span/a[3]").text == "Accept"
  #              @browser.link(:xpath,"//tr[1]/td[4]/span/a[3]").when_present.click
  #              @browser.alert.ok
  #       end
  #     else
  #       @browser.link(:xpath,"//tr[1]/td[4]/span/a").when_present.click
  #       @browser.textarea(:id, "compliance_message").when_present.set "重新签署TNC msg"
  #       @browser.button(:id, "compliance-send-submit").when_present.click
  #     end
  #   end
  # end

  def tnc_online_ksh
    self.compliance_tab
    hidden_element
    self.online_link
    self.tnc_template = "顾问通过官网签T&C的链接(Chinese)"
    self.submit_tnc
  end

  def tnc_online_capweb
    self.compliance_tab
    self.online_link
    self.tnc_template = "顾问通过官网签T&C的链接(English)"
    self.submit_tnc
  end
 
  # def tnc_online_cancel
  #   self.compliance_tab
  #   self.online_link
  #   self.cancel_tnc
  # end

  def upload_file(dir)
    self.compliance_tab
    self.open_upload_prompt
    self.select_attachment = dir
    self.upload_attachment
  end

  def edit_pull_request
    self.request_tab
    self.request_type = "Hiring"
    self.request_message = "AT测试pull request"
    self.submit_request
  end

  def edit_payment
    self.finance_tab
    self.edit_payment_method_element.click
    self.payment_type = "Cash"
    self.edit_payment_method_element.click
  end

  def add_china_bankcard
    self.finance_tab
    self.add_bank_card
    self.china_bank_element.when_present.click
    self.china_bank_name_element.when_present.click
    self.select_bank_name_element.when_present.click
    self.bank_account_name = "AT张三#{rand(1000)}"
    self.bank_account_number = "1234234545676789"
    self.other_information = "test other bank"
    self.save_bank_information
  end

  def add_international_bankcard
    self.finance_tab
    self.add_bank_card
    self.international_bank_element.when_present.click
    self.international_bank_name = "tim test international bank"
    self.bank_location
    self.select_bank_location_element.when_present.click
    self.select_bank_identifier_type
    self.bank_identifier="123123123123123123"
    self.bank_account_name = "tim test international account"
    self.bank_account_number = "asdasdadaasdasdad"
    self.bank_beneficiary_address = "tim test address"
    self.other_information = "tim test other information"
    self.save_bank_information
  end

  # def input_special_characters
  #   self.finance_tab
  #   self.add_bank_card
  #   sleep 2
  #   self.bank_account_number = "@@!@!"
  #   self.save_bank_information
  # end

  # def input_null
  #   self.finance_tab
  #   self.add_bank_card
  #   self.save_bank_information
  # end

  def edit_gifts
    self.finance_tab
    hidden_element
    self.edit_gifts_card_element.click 
    self.check_gasoline_card
    self.edit_gifts_card_element.click 
  end

  def edit_donate
    self.finance_tab
    hidden_element
    self.edit_donate_information_element.click
    self.donate_account_name_element.when_present.value = "test donate account name"
    self.donate_website = "test donate website"
    self.edit_donate_information_element.click
  end

  def edit_interest
    self.interest_tab
    hidden_element
    self.edit_interest_button
    self.check_capvision_expert_exchanges
    self.check_ipo_newsletters
    self.check_monthly_investment_reports
    self.check_prefer_email
    self.check_prefer_phone
    self.check_preder_sms 
    self.check_im 
    self.check_project_interviews
    self.check_industry_networking
    self.check_career_opportunities
    self.check_business_deals
    self.check_fundraising
    self.save_interest
  end

  def send_introduction
    hidden_element
    self.send_email_dropdownlist_element.when_present.click
    self.send_introduction_link_element.when_present.click
    self.send_introduction_button_element.when_present.click  
  end
      
  # def change_status
  #     self.consultant_status
  #     self.status_value
  # end

  def add_telephone
    self.add_telephone_button_element.when_present.click
    self.contact_telephone_element.when_present.value= "56524353"
    self.save_telephone_element.when_present.click
  end

  def add_email
    self.add_email_element.when_present.click
    self.contact_email_element.when_present.value= "rhan@capvision.com.cn"
    self.save_email_element.click
  end

  def add_weixin
    self.add_weixin_button_element.when_present.click
    self.weixin_element.when_present.value= "Ryan's weixin"
    self.save_weixin_element.when_present.click 
  end

  def add_identity_card
    hidden_element
    self.identity_view_link
    self.add_identity_btn_element.when_present.click
    sleep 2
    self.identity_card_type="Identity Card"
    self.identity_card_number= "123456543212345"
    self.save_identity_btn_element.click
  end

  def add_consultant_into_consultation
    hidden_element
    self.add_to_project
    self.input_project_name_element.when_present.value = "test"
    self.first_project_name_element.when_present.click
    self.add_consultant_to_project_btn_element.click
    self.stay_btn_element.when_present.click
  end
  # def add_other_contact
  #   hidden_element
  #     self.add_other_contact_button
  #     sleep 2
  #     self.other_contact="541039523"
  #     self.save_other_contact_element.when_present.click
  # end

  # def goto_relationship_project_page
  #   self.relationship_tab
  #   self.relationship_project_tab
  # end

  # def goto_relationship_communication_page
  #   self.relationship_tab
  #   self.relationship_communication_tab
  # end

  # def goto_relationship_request_page
  #   self.relationship_tab
  #   self.relationship_request_tab
  # end

  # def goto_relationship_compliance_page
  #   self.relationship_tab
  #   self.relationship_compliance_tab
  # end

  # def goto_relationship_point_page
  #   self.relationship_tab
  #   self.relationship_compliance_tab
  # end

  def goto_points_income_page
    self.points_tab
    self.points_income_tab
  end

  def goto_points_spent_page
    self.points_tab
    self.points_spent_tab
  end

  # def goto_communications_email_page
  #   self.communications_tab
  #   self.communications_email_tab
  # end

  # def goto_communications_phone_page
  #   self.communications_tab
  #   self.communications_phone_tab
  # end

  # def goto_communications_sms_page
  #   self.communications_tab
  #   self.communications_sms_tab
  # end

  def goto_projects_consultations_page
    self.projects_tab
    self.projects_consultations_tab
  end

  def goto_projects_data_page
    self.projects_tab
    self.projects_data_tab
  end

  def goto_projects_ges_page
    self.projects_tab
    self.projects_ges_tab
  end

  def goto_projects_conference_page
    self.projects_tab
    self.projects_conference_tab
  end

  def goto_projects_hrs_page
    self.projects_tab
    self.projects_hrs_tab
  end
  
  # def verify_page
  #   self.search_element.when_present.click
  #   self.search_element.when_present.text.should == "Search"
  # end
  
  # def add_notes_more
  #   hidden_element
  #   self.note = "More than 3 lines-More than 3 lines-More than 3 lines-More than 3 lines-More than 3 lines More than 3 lines-More than 3 lines-More than 3 lines-More than 3 lines-More than 3 lines"
  #   sleep 3
  #   self.save_note
  # end
  
end
