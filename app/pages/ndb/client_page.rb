#encoding: utf-8
require File.expand_path 'app/cases/shared/main.rb'
require File.expand_path 'app/cases/shared/action.rb'
class ClientPage < Lol::Page
  include Action
  page_url "#{$config.host}client/index/index" 

  #client search button
  button :search_client, :value=> "Search"

  #client contact search button
  button :search_client_contact,:name=>"yt0"

  #first client
  link :first_client,:xpath=>"(//tr/td/a)[1]"

  #keywords textfield
  text_field :keywords, :id=> "Client_keyword"

  # client_table_list
  table :client_list, :class=> "items table table-striped"

  #select client status
  select_list :status, :id=> "Client_status"

  #select client type
  select_list :types, :id=> "Client_type"

  #select client am 
  span :select_client_am, :xpath=> "//div[@id='s2id_Client_am']/a/span"

  #client lead source
  select_list :client_leadsource, :id=> "Client_leadsource"

  #client contact tab
  link :client_contact_tab, :xpath=>"//ul[@id='yw1']/li[2]/a"

  #client contact sale notes tab
  link :client_sale_notes_tab, :xpath=>"//ul[@id='yw1']/li[3]/a"

  #choose first contact
  checkbox :choose_first_contact, :id=> "client-contact-grid_c0_0"

  #inactive button
  button :inactive_btn, :id=> "set-inactive-btn"

  #client contact status
  select_list :client_contact_status, :id=> "ClientContact_status"

  #active button
  button :active_btn, :id=> "set-active-btn"
 
  #client contact nps selectlist
  select_list :client_contact_nps, :id=> "ClientContact_nps"

  #client contact registration selectlist
  select_list :client_contact_registration, :id=> "ClientContact_registration"

  #client contact keyword search field
  text_field :client_contact_keywords, :id=> "ClientContact_keywords"

  #click create client link
  link :create_client_button, :xpath=> "//a[contains(text(),'Create Client')]"

  # create button
  button :create_btn, :id=>"yw3"

  #client alert verify
  div :alert_verify, :xpath=> "//form[@id='client-contact-search-form']/div[2]"

  #client team size
  select_list :client_teamsize, :id=> "Client_teamsize"

  #client am team
  select_list :client_am_team, :id=>"Client_amteamid"

  #client charge type
  select_list :client_charge_type, :id=>"Client_chargetype"

  #client name
  text_field :client_name, :id=>"Client_name"

  #input client chinese name
  text_field :client_chinesename, :id=> "Client_chinesename"

  #location
  div :location, :id=> "location-selector"

  #location value
  link :location_value, :xpath=> "//div[@id='dialog']/ul[2]/li[1]/a"

  #click client am 
  link :client_am, :class=>"select2-choice"

  #select client am
  div :select_am, :text=> "test_am1"

  # client another am
  link :client_another_am, :xpath=> "//div[@id='s2id_ClientAmPercentage_1_amid']/a" 

  #select client another am
  div :select_client_another_am, :text=> "test_am2"

  #client am percentage
  text_field :client_am_percentage, :id=> "ClientAmPercentage_0_percentage"

  #client another am percentage
  text_field :client_another_am_percentage, :id=> "ClientAmPercentage_1_percentage"

  #client split notes
  text_area :client_split_note, :id=> "ClientAmPercentage_0_split_notes"

  #client  status
  select_list :client_status, :id=> "ClientRelation_status"

  #client  status notes
  text_area :client_statusnotes, :id=> "ClientRelation_statusnotes"

  #client alert
  text_area :client_alert, :id=> "ClientRelation_alert"

  #client rate multiplier
  text_area :client_rate_multiplier ,:id=>"ClientRelation_multiplier"

  #client reminder
  text_area :client_reminder, :id=> "ClientRelation_reminder"

  #client relation lead source
  select_list :client_relation_leadsource, :id=>"ClientRelation_leadsource"

  #client contract name
  text_field :client_contract_name, :id=>"ClientContract_name"

  #client contract details
  text_area :client_contract_details, :id=> "ClientContract_details"

  #client contract size
  text_field :client_contract_size, :id=> "ClientContract_size"

  #client contract revenue note
  text_area :client_contract_revenuenote, :id=> "ClientContract_revenuenote"

  #client contract period
  text_field :client_contract_period, :id=> "ClientContract_period"

  #client contract closedate string
  text_field :client_contract_closedate_string, :id=> "ClientContract_closedateString"

  

  #edit sale note link
  element :edit_sale_note, :i ,:xpath=> "(//a[2]/i)[1]"

  #client sale notes type
  select_list :client_sale_notes_type, :id=> "ClientSaleNotes_type"

  #save sale note button
  element :save_sale_note, :i, :xpath=> "//form/a/i"

  #add sale note btn
  link :add_sale_note, :id=> "add-salenote-btn"

  #client sale notes date 
  text_field :client_sale_notes_date, :id=> "ClientSaleNotes_dateString"

  #select sale notes date
  td :select_sale_notes_date, :xpath=> "//tr[4]/td[3]"

  #client sale notes text
  text_area :client_sale_notes_text, :id=> "ClientSaleNotes_notes"

  #client nextstep
  text_area :client_next_step, :id=> "ClientSaleNotes_nextstep"

  #delete client sale note
  element :delete_client_sale_note, :i ,:xpath=> "(//div/a/i)[1]"

  #client name err msg
  span :client_name_err_msg, :xpath=> "(//div[@class='unit-content']/div[2]/div/span)[1]"

  #client am percentage err msg
  div :client_am_percentage_err_msg, :xpath=> "//div[@id='replacable-div']/div"

  #add another am
  button :add_another_am, :id=> "add-edit-am"

  #client enddate err msg
  span :client_enddate_err_msg, :xpath=> "//div[@id='trial_div']/div[1]/div/span"

  #trial end date
  text_field :trial_enddate, :id=> "ClientRelation_trialdateString"

  #client trial enddate err msg
  li :client_trial_enddate_err_msg, :xpath=> "//form[@id='client-form']/div[3]/div/div[1]/ul/li"

  # trial amount
  text_field :trail_amount, :id=> "ClientRelation_trialamount"

  #client cancel btn 
  link :cancel_btn, :text=> "Cancel"

  #delete sale notes
  element :delete_sale_notes,:i,:xpath=>"//div/a/i"

  #edit basic info btn
  element :edit_basic_info_btn,:i, :xpath=> "//a[@id='basic-info-edit']/i"

  #edit crm btn
  element :edit_crm_btn, :i, :xpath=>"//a[@id='basic-crm-edit']/i"

  #add contract btn
  element :add_contract_btn ,:i, :xpath=>"//div[@id='basic-contract-view']/a/i"

  #edit contract information btn
  element :edit_contract_info_btn, :i, :xpath=>"(//div[@class='span2']/a/i[@class='icon-edit'])[1]"

  #save contract information btn
  link :save_contract_information_btn,:xpath=>"//div[@class='form-actions']/a[1]"

  #complete client contract
  button :complete_client_contract ,:name=>"yt0"

  #contract yes button
  span :contract_yes_btn, :xpath=>"//span[@class='ui-button-text' and contains(text(),'Yes')]"

  #upload contract attachment btn
  element :upload_contract_attachment_btn, :i, :class=>"icon-upload"

  #select contract
  file_field :select_contract, :id=>"ndb-file-upload-input"

  #upload contract
  button :upload_contract, :id=>"ndb-file-upload-upload-btn"

  #reopen contract
  link :reopen_contract, :xpath=>"//div[@class='form-actions']/a[3]"

  #delete contract btn
  element :delete_contract, :i, :xpath=>"//div[@class='span2']/a[2]/i[@class='icon-trash']"

  #tnc expiry date link
  link :tnc_expiry_date_link, :id=>"compliance_tnc_expiry_date"

  #tnc expiry date
  text_field :tnc_expiry_date, :class=>"input-medium"

  #save tnc expiry date
  button :save_tnc_expiry_date, :xpath=>"//div[@class='control-group']/div[1]/div[2]/button[1]"

  #add competitor notes
  button :add_competitor_notes, :id=>"add-competitor-note-btn"

  #competitor notes value
  text_field :competitor_notes_value, :id=>"ClientCompetitorNote_message"

  #save competitor notes
  button :save_competitor_notes, :id=>"competitor-note-save-btn"

  #edit competitor notes
  element :edit_competitor_notes, :i, :xpath=>"//div[@id='competitor-notes-area']/div[3]/div/div[3]/i[1]"

  #editsave competitor notes 
  element :editsave_competitor_notes, :i, :xpath=>"//div[@id='competitor-notes-area']/div[3]/div/div[2]/i"

  #delete competitor notes
  element :delete_competitor_notes, :i, :xpath=>"//div[@id='competitor-notes-area']/div[3]/div/div[3]/i[2]"

  #add compliance notes
  button :add_compliance_notes, :id=>"add-compliance-note-btn"

  #compliance notes value
  text_field :compliance_notes_value, :id=>"ClientComplianceNote_message"

  #save compliance notes
  button :save_compliance_notes, :id=>"compliance-note-save-btn"

  #edit compliance notes
  element :edit_compliance_notes, :i, :xpath=>"//div[@id='compliance-notes-area']/div[3]/div[1]/div[3]/i[1]"

  #editsave compliance notes
  element :editsave_compliance_notes, :i, :xpath=>"//div[@id='compliance-notes-area']/div[3]/div[1]/div[2]/i"

  #delete compliance notes
  element :delete_compliance_notes, :i, :xpath=>"//div[@id='compliance-notes-area']/div[3]/div[1]/div[3]/i[2]"

  #add cash
  button :add_cash ,:id=>"add-cash-btn"

  #cash amount
  text_field :cash_amount, :id=>"cash-amount-new"

  #cash date
  text_field :cash_date, :id=>"cash-date-new"

  #save cash
  button :save_cash, :id=>"cash-save-btn"

  #edit cash
  element :edit_cash, :i, :xpath=>"//div[@id='cash-area']/div[2]/div/div[5]/a[1]/i"

  #update cash value
  text_field :update_cash_value, :name=>"ClientCash[amount]"

  #edit save cash
  element :editsave_cash, :i, :xpath=>"//div[@id='cash-area']/div[2]/div/div[3]/a/i"

  #delete cash
  element :delete_cash ,:i, :xpath=>"//div[@id='cash-area']/div[2]/div/div[5]/a[2]/i"

  #client projects tab
  link :client_projects_tab, :xpath=>"//ul[@id='yw1']/li[4]/a"

  #client projects consultations tab
  link :client_projects_consultation_tab,:xpath=>"//ul[@id='yw2']/li[1]/a"

  #client projects data tab
  link :client_projects_data_tab,:xpath=>"//ul[@id='yw2']/li[2]/a"
  
  #client projects ges tab
  link :client_projects_ges_tab,:xpath=>"//ul[@id='yw2']/li[3]/a"
  
  #client projects conference tab
  link :client_projects_conference_tab,:xpath=>"//ul[@id='yw2']/li[4]/a"

  #client projects hr tab
  link :client_projects_hr_tab,:xpath=>"//ul[@id='yw2']/li[5]/a"

  #create contact btn
  button :create_contact_btn, :id=>"create-contact-btn"

  #contact name
  text_field :contact_name, :id=>"ClientContact_chinesename"

  #contact firstname
  text_field :contact_firstname, :id=>"ClientContact_firstname"

  #contact lastname
  text_field :contact_lastname, :id=>"ClientContact_lastname"

  #mobile
  text_field :mobile, :id=>"Contact_mobile_mobilephone"

  #area code
  text_field :area_code, :id=>"Contact_tel_citycode"

  #telephone
  text_field :telephone, :id=>"Contact_tel_telephone"

  #ext
  text_field :ext, :id=>"Contact_tel_extension"

  #email
  text_field :email, :id=>"Contact_email_other"

  #weixin
  text_field :weixin, :id=>"Contact_weixin_other"

  #linkedin
  text_field :linkedin, :id=>"Contact_linkedin_other"

  #position
  text_field :position, :id=>"ClientContact_position"

  #industry coverage
  unordered_list :industry_coverage ,:xpath=>"//div[@id='s2id_ClientContact_industrycoverage']/ul"

  #industry coverage
  # div :industry_coverage_value,:xpath=>"html/body/div[5]/ul/li[2]/div"

  #contact create button
  button :contact_create_btn, :id=>"yw2"

  #contact nps
  select_list :contact_nps, :id=>"ClientContact_nps"





  def select_first_client
    hidden_element
    self.keywords_element.when_present.value="testkehu"
    self.search_client
    self.first_client_element.when_present.click
    self.attach_to_window :url=>self.first_client_element.href
  end

  
  def generate_client_type
    temp = "Consulting Firm","Private Equity","Hedge Fund","Venture Capital","Mutual Fund","Corporate","Financial Firm","Others"
    type = temp[rand(0..7)].to_s
  end

  def generate_client_name
    num= [*'a'..'z',*'0'..'9',*'A'..'Z'].sample(8).join
  end

  def create_basic_information
    self.client_name_element.when_present.value=("at_test_"+generate_client_name)
    self.client_chinesename="五指若风"
    self.types=self.generate_client_type
    self.client_teamsize="500-999人"
    self.client_am_team="Domestic"
    self.client_charge_type="Grade"
    self.location_element.click
    self.location_value_element.when_present.click
  end

  def create_account_manager
    self.client_am
    self.select_am_element.when_present.click
    self.client_am_percentage="100"
    self.client_split_note="at ada asda# ad@ asdz$ sf___--#{rand(10000)}"
  end

  def create_crm
    self.client_status="Project"
    self.client_statusnotes="at sdas asdad@1ewe#!@_ - -#{rand(10000)}"
    self.client_alert="at sdas asdad@1ewe#!@_ - -#{rand(10000)}"
    self.client_rate_multiplier="at sdas asdad@1ewe#!@_ - -#{rand(10000)}"
    self.client_reminder="at sdas asdad@1ewe#!@_ - -#{rand(10000)}"
    self.client_relation_leadsource="Others"
  end

  def create_contract_information
    self.client_contract_name="at qweq"
    self.client_contract_details="at qweq eqwe qweqwe wqe_@asda " 
    self.client_contract_size="2999"
    self.client_contract_period="1"
    self.client_contract_revenuenote="at qweq eqwe qweqwe wqe_@asda "
    self.client_contract_closedate_string_element.when_present.click
    self.select_today
  end
     
  def create_client
      self.create_client_button_element.when_present.click
      self.create_basic_information
      self.create_account_manager
      self.create_crm
      self.create_contract_information  
      self.create_btn
  end
  
  def edit_sale_notes
      self.edit_sale_note_element.when_present.click
      self.client_sale_notes_type_element.when_present.select "Email"
      self.save_sale_note_element.when_present.click
  end

  def generate_client_sale_notes_type
    value= "Sales Visit","Phone Call","Email"
    type = value[rand(0..2)].to_s
  end

  def create_sale_notes
    self.add_sale_note_element.when_present.click
    self.client_sale_notes_type_element.when_present.select(generate_client_sale_notes_type)
    self.client_sale_notes_date_element.when_present.click
    self.select_sale_notes_date_element.when_present.click
    self.client_sale_notes_text_element.when_present.value=("akdjasljd_aks#;  oldaks@")
    self.client_next_step_element.when_present.value=("!@jjojsadallm #xmaspjdasp")
    self.add_sale_note_element.when_present.click
  end
  
  def client_name_alert
    self.client_name_err_msg_element.when_present.text
  end
  
  def client_am_percentage_alert
    self.client_am_percentage_err_msg_element.when_present.text
  end
  
  def client_enddate_alert
    self.client_enddate_err_msg_element.when_present.text
  end
  
  def client_trial_enddate_alert
    self.client_trial_enddate_err_msg_element.when_present.text
  end
  
  def select_today
    self.send_keys :left
    self.send_keys :right
    self.send_keys :enter
  end
  
  def client_table_list_keyword
    self.client_list_element[2][0].text
  end

  def num
    num = rand(2..5)
  end 
  
  def client_table_list_status
    self.client_list_element[self.num.to_i][7].text
  end
  
  def client_table_list_type
    self.client_list_element[self.num.to_i][6].text
  end
  
  def client_table_list_type1
    self.client_list_element[2][6].text
  end
  
  def client_table_list_status1
    self.client_list_element[2][7].text
  end

  def client_table_list_location
    self.client_list_element[self.num.to_i][11].text
  end

  def edit_basic_information
    self.edit_basic_info_btn_element.when_present.click
    self.client_am_team_element.when_present.select "GES"
    self.client_charge_type_element.when_present.select "Normal"
    self.edit_basic_info_btn_element.when_present.click
  end

  def edit_crm
    self.edit_crm_btn_element.when_present.click
    self.client_reminder_element.when_present.value="tim test client reminder!!"
    self.edit_crm_btn_element.when_present.click
  end
   
  def edit_contract_information
    self.edit_contract_info_btn_element.when_present.click
    self.client_contract_name_element.when_present.value="tim test contract name"
    self.client_contract_details_element.when_present.value="tim test contract details"
    self.save_contract_information_btn_element.when_present.click
  end

  def upload_contract_attachment
    self.upload_contract_attachment_btn_element.when_present.click
    self.select_contract=File.expand_path(File.join('.'),'app/attachment/sprint1.docx')
    self.upload_contract
  end

  def edit_tnc_expire_date
    self.tnc_expiry_date_link_element.when_present.click
    self.tnc_expiry_date_element.when_present.clear 
    self.tnc_expiry_date_element.when_present.value=num
    self.save_tnc_expiry_date_element.when_present.click
  end

  def create_contact
    self.create_contact_btn_element.when_present.click
    hidden_element
    self.contact_name_element.when_present.value="tim_test#{rand(10000)}"
    self.contact_firstname_element.when_present.value="tim_test_firstname#{rand(10000)}"
    self.contact_lastname_element.when_present.value="tim_test_lastname#{rand(10000)}"
    self.mobile_element.when_present.value="259181#{rand(1000000)}"
    self.area_code_element.when_present.value="021"
    self.telephone_element.when_present.value="3567240"
    self.ext_element.when_present.value="2233"
    self.email_element.when_present.value="tim0609#{rand(1000000)}@163.com"
    self.weixin_element.when_present.value="timtestweixin"
    self.linkedin_element.when_present.value="timtestlinkedin"
    self.position_element.when_present.value="test leader"
    self.location_element.when_present.click
    self.location_value_element.when_present.click
    self.industry_coverage_element.when_present.click
    self.send_keys(:down)
    self.send_keys(:enter)
    self.contact_nps_element.when_present.click
    self.contact_nps_element.when_present.select "Promoter"
    sleep 5
    self.contact_create_btn
  end
end