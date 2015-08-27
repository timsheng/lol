#encoding: utf-8
require File.expand_path 'app/cases/spec_helper'
require File.expand_path 'app/cases/shared/action'

describe 'client page', :client  do 
  
    let(:client_page) do 
      home_page = $navi.goto_home_page
      login_page = home_page.direct_to_login_page
      home_page = login_page.login "timsheng","abcd1234"
      client_page = home_page.direct_to_client_page
    end


    it '访问客户搜索列表页面 '  do
      client_page.create_client_button_element.when_present.text.should include "Create Client"
      client_page.title.should eql "Clients - Capvision"
    end
    
    it '客户搜索页面默认搜索功能正常' do
      client_page.hidden_element
      client_page.search_client_element.when_present.click
    end
    
    it '客户搜索页面按照关键字搜索'  do
      client_page.hidden_element
      client_page.keywords_element.when_present.value= "ATconvey"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_keyword.should include "ATconvey" 
      end
    end

    it '客户搜索页面按照客户状态Prospect搜索' do
      client_page.hidden_element
      client_page.status="Prospect"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_status.should eql "Prospect" 
      end 
    end

    it '客户搜索页面按照客户状态Engage搜索' do  
      client_page.hidden_element
      client_page.status="Engage"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_status.should eql "Engage"
      end
    end

    it '客户搜索页面按照客户状态Discover搜索' do  
      client_page.hidden_element    
      client_page.status="Discover"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_status.should eql "Discover"
      end
    end

    it '客户搜索页面按照客户状态Trial搜索' do   
      client_page.hidden_element   
      client_page.status="Trial"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_status.should eql "Trial"      
      end
    end

    it '客户搜索页面按照客户状态Confirm搜索' do
      client_page.hidden_element
      client_page.status="Confirm"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_status.should eql "Confirm"      
      end
    end

    it '客户搜索页面按照客户状态Annual搜索' do  
      client_page.hidden_element
      client_page.status="Annual"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_status.should eql "Annual"     
      end
    end

    it '客户搜索页面按照客户状态Project搜索' do 
      client_page.hidden_element 
      client_page.status="Project"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_status.should eql "Project"     
      end
    end

    it '客户搜索页面按照status和type组合搜索' do 
      client_page.hidden_element 
      client_page.status="Prospect"
      client_page.types="Consulting Firm"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_type1.should eql "Consulting Firm"
        client_page.client_table_list_status1.should eql "Prospect"
      end
    end
    
    it '客户搜索页面按照am/lead source/location搜索'  do
      client_page.hidden_element
      client_page.select_client_am_element.when_present.click
      client_page.select_am_element.when_present.click
      client_page.client_leadsource="Others"
      client_page.location_element.when_present.click
      client_page.location_value_element.when_present.click
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_location.should eql "China-上海"
      end
    end
    
    
    it '客户搜索页面按Consulting Firm类型搜索' do
      client_page.hidden_element
      client_page.types="Consulting Firm"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_type.should eql "Consulting Firm" 
      end
    end

    it '客户搜索页面按Private Equity类型搜索' do
      client_page.hidden_element
      client_page.types="Private Equity"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_type.should eql "Private Equity"
      end
    end

    
    it '客户搜索页面按Hedge Fund类型索索' do
      client_page.hidden_element
      client_page.types="Hedge Fund"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_type.should eql "Hedge Fund"
      end
    end

    it '客户搜索页面按Venture Capital类型搜索' do
      client_page.hidden_element
      client_page.types="Venture Capital"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_type.should eql "Venture Capital"
      end
    end

    it '客户搜索页面按Mutual Fund类型搜索' do 
      client_page.hidden_element
      client_page.types="Mutual Fund"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_type.should eql "Mutual Fund"
      end
    end

    it '客户搜索页面按Corporate类型搜索' do 
      client_page.hidden_element
      client_page.types="Corporate"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_type.should eql "Corporate"
      end
    end

    it '客户搜索页面按Financial Firm类型搜索' do
      client_page.hidden_element
      client_page.types="Financial Firm"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_type1.should eql "Financial Firm"
      end
    end

    it '客户搜索页面按Others类型搜索' do
      client_page.hidden_element
      client_page.types="Others"
      client_page.search_client
      client_page.wait_until do
        client_page.client_table_list_type1.should eql "Others"
      end
    end

    it '创建客户时不填写任何内容'  do
      client_page.create_client_button_element.when_present.click
      client_page.create_btn_element.when_present.click 
    end

    it '创建客户时只填写name' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_name_element.when_present.value= "at_test_ac"
      client_page.create_btn_element.when_present.click 
    end
  
    it '创建客户时只填写am' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_am_element.when_present.click
      client_page.select_am_element.when_present.click
      client_page.create_btn_element.when_present.click 
    end
    
    it '创建客户时只填写CRM status' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_status_element.when_present.select("Project")
      client_page.create_btn_element.when_present.click 
    end
    
    it '创建客户时填写客户名字(有重复)' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_name_element.when_present.value="123"
      client_page.create_btn_element.when_present.click 
      client_page.client_name_alert.should include "The client already exists:"
    end
    
    it '创建客户时am percentage填写-1%' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_am_percentage_element.when_present.value="-1%"
      client_page.create_btn_element.when_present.click 
      client_page.client_am_percentage_alert.should include "Split Percentage must between 0 and 100"
    end
   
    it '创建客户时,填写两个am,百分比分别为60,40' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_am_element.when_present.click
      client_page.select_am_element.when_present.click
      client_page.client_am_percentage_element.when_present.value="60"
      client_page.add_another_am_element.when_present.click
      client_page.client_another_am_element.when_present.click
      client_page.select_client_another_am_element.when_present.click
      client_page.client_another_am_percentage_element.when_present.value="40"
      client_page.create_btn_element.when_present.click 
    end
    
    it '客户创建页面CRM status选择trial,不填写end date,点击保存' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_status_element.when_present.select("Trial")
      client_page.create_btn_element.when_present.click 
      client_page.client_enddate_alert.should include "Trial End Date is required."
    end
    
    it '客户创建页面CRM status选择trial,end date填写小于今天,点击保存' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_status_element.when_present.select("Trial")
      client_page.trial_enddate_element.when_present.value="06/22/2014"
      client_page.create_btn_element.when_present.click 
      client_page.client_trial_enddate_alert.should include "Trial end date can not before today"
    end
    
    it '客户创建页面CRM status选择trial,end date填写大于今天,点击保存' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_status_element.when_present.select("Trial")
      client_page.trial_enddate_element.when_present.value="10/22/2016"
      client_page.create_btn_element.when_present.click 
    end
    
    it '客户创建页面CRM status选择trial,end date填写今天,点击保存' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_status_element.when_present.select("Trial")
      client_page.trial_enddate_element.when_present.click
      client_page.select_today
      client_page.create_btn_element.when_present.click 
    end
    
    it '客户创建页面CRM status选择trial,amount填写-6,点击保存' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_status_element.when_present.select("Trial")
      client_page.trail_amount_element.when_present.clear
      client_page.trail_amount_element.when_present.value="-6"
      client_page.create_btn_element.when_present.click 
      client_page.client_trial_enddate_alert.should include "Trial Amount must be larger than 0"
    end
    
    it '客户创建页面CRM status选择trial,amount填写97.4,点击保存' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_status_element.when_present.select("Trial")
      client_page.trail_amount_element.when_present.clear
      client_page.trail_amount_element.when_present.append "97.4"
      client_page.create_btn_element.when_present.click 
      client_page.client_trial_enddate_alert.should include "Trial Amount must be an integer."
    end
    
    it '客户创建页面CRM status选择trial,amount填写100,点击保存' do
      client_page.create_client_button_element.when_present.click
      client_page.hidden_element
      client_page.client_status_element.when_present.select("Trial")
      client_page.trail_amount_element.when_present.clear
      client_page.trail_amount_element.when_present.value="100"
      client_page.create_btn_element.when_present.click 
    end
    
    it '客户创建页面填写所有必填项目,点击cancel' do
      client_page.create_client_button_element.when_present.click
      client_page.cancel_btn_element.when_present.click
    end
    
    it '创建客户时填写所有必填项目' do
      client_page.create_client
      client_page.wait_until do
        client_page.text.should include "at_test"
      end
    end
    
    it '客户联系人页面筛选多个客户联系人,点击deactive' do
      client_page.select_first_client
      client_page.client_contact_tab_element.when_present.click
      client_page.hidden_element
      client_page.choose_first_contact_element.when_present.click
      client_page.inactive_btn
      client_page.alert_verify_element.when_present.text.should eql "Set Inactive Success"
    end
    
    
    it '客户联系人页面筛选多个inactive客户联系人,点击active' do
      client_page.select_first_client
      client_page.client_contact_tab_element.when_present.click
      client_page.hidden_element
      client_page.client_contact_status="Inactive"
      client_page.search_client_contact
      client_page.choose_first_contact_element.when_present.click
      client_page.active_btn
      client_page.alert_verify_element.when_present.text.should eql "Set Active Success"
    end

     
    it '客户联系人页面按Promoter状态搜索' do
      client_page.select_first_client
      client_page.client_contact_tab_element.when_present.click
      client_page.hidden_element
      client_page.client_contact_nps_element.when_present.select "Promoter"
      client_page.search_client_contact
      client_page.wait_until do
        client_page.text.should include "Promoter"
      end
    end

     
    it '客户联系人页面按Neutral状态搜索' do
      client_page.select_first_client
      client_page.client_contact_tab_element.when_present.click
      client_page.hidden_element
      client_page.client_contact_nps_element.when_present.select "Neutral"
      client_page.search_client_contact
      client_page.wait_until do
        client_page.text.should include "Neutral"
      end
    end

     
    it '客户联系人页面按Detractor状态搜索' do
      client_page.select_first_client
      client_page.client_contact_tab_element.when_present.click
      client_page.hidden_element
      client_page.client_contact_nps_element.when_present.select "Detractor"
      client_page.search_client_contact
      client_page.wait_until do
        client_page.text.should include "Detractor"
      end
    end

    it '客户联系人页面按Unsent状态搜索' do
      client_page.select_first_client
      client_page.client_contact_tab_element.when_present.click
      client_page.hidden_element
      client_page.client_contact_registration_element.when_present.select "Unsent"
      client_page.search_client_contact
    end

     
    it '客户联系人页面按Sent状态搜索' do
      client_page.select_first_client
      client_page.client_contact_tab_element.when_present.click
      client_page.hidden_element
      client_page.client_contact_registration_element.when_present.select "Sent"
      client_page.search_client_contact
    end

    
    it '客户联系人页面按Registered状态搜索' do
      client_page.select_first_client
      client_page.client_contact_tab_element.when_present.click
      client_page.hidden_element
      client_page.client_contact_registration_element.when_present.select "Registered"
      client_page.search_client_contact
    end

    
    it '客户联系人页面按关键字搜索' do
      client_page.select_first_client
      client_page.client_contact_tab_element.when_present.click
      client_page.hidden_element
      client_page.client_contact_keywords_element.when_present.value="weiwei"
      client_page.search_client_contact
      client_page.wait_until do
        client_page.text.should include "weiwei"
      end
    end
    
    # it '客户页面改变客户类型并验证',:test do
    #   client_page.goto_client_contacts_page
    #   client_page.goto_client_subpage "Profile"
    #   client_page.change_client_type "Mutual Fund"
    #   client_page.backto_client_page
    #   client_page.keywords = "湿嗒嗒大"
    #   client_page.search
    #   client_page.wait_until do
    #     client_page.client_table_list_type1.should eql "Mutual Fund"
    #   end    
    # end
    
    it '客户的sale notes页面编辑sale notes'do
      client_page.select_first_client
      client_page.client_sale_notes_tab_element.when_present.click
      client_page.hidden_element
      client_page.edit_sale_notes
      client_page.wait_until do
        client_page.text.should include "Email"
      end  
    end
    
    it '客户的sale notes页面删除sale notes' do
      client_page.select_first_client
      client_page.client_sale_notes_tab_element.when_present.click
      client_page.hidden_element
      client_page.create_sale_notes
      message=client_page.confirm(true) do
        client_page.delete_client_sale_note_element.when_present.click
      end
      message.should == "Are you sure you want to delete this sale note?"
    end

    it "客户profile页面编辑客户的Basic Information" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.edit_basic_information
    end

    it "客户profile页面编辑客户的CRM" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.edit_crm
    end

    
    it "客户profile页面新建contract" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.add_contract_btn_element.when_present.click
      client_page.create_contract_information
      client_page.save_contract_information_btn
    end 

    ###-1
    it "客户profile页面新建contract，点击cancel" do
      pending
    end

    it "客户profile页面编辑contract information"  do
      client_page.select_first_client
      client_page.hidden_element
      client_page.edit_contract_information
    end   

    #-1
    it "客户profile页面编辑contract information,点击cancel" do
      pending
    end

    it "客户profile页面complete contract" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.complete_client_contract_element.when_present.click
      client_page.contract_yes_btn_element.when_present.click
    end 


    it "客户profile页面 completed contract上传合同附件" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.upload_contract_attachment
    end 


    it "客户profile页面 completed contract进行reopen操作" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.edit_contract_info_btn_element.when_present.click
      client_page.reopen_contract_element.when_present.click
    end 

    it "客户profile页面删除contract" do
      client_page.select_first_client
      client_page.hidden_element
      message = client_page.confirm(true) do
        client_page.delete_contract_element.when_present.click
      end
      message.should == "Are you sure you wish to delete this contract?"
    end 

    #-1
    it "客户profile页面，添加一个am,百分比为100，点击保存" do
      pending
    end 
    #-1
    it "客户profile页面compliance requirements 点击revealclientname from yes to no" do
      pending
    end 
    #-1
    it "客户profile页面compliance requirements选择 T&C" do
       pending
    end 
    
    it "客户profile页面compliance requirements编辑tc expiry date" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.edit_tnc_expire_date
    end 

    #-1
    it "客户profile页面compliance requirements 点击training from no to yes" do
      pending
    end 
    #-1
    it "客户profile页面compliance requirements 点击capvision approval from no to yes" do
      pending
    end 
    #-1
    it "客户profile页面compliance requirements点击client approval from no to yes" do
      pending
    end 
    #-1
    it "客户profile页面compliance requirements点击spectial requirement from no to yes" do
      pending
    end 
    #-1
    it "客户profile页面compliance requirements点击english profile requirement from no to yes" do
      pending
    end 

    it "客户profile页面新添加competitor notes" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.add_competitor_notes_element.when_present.click
      client_page.competitor_notes_value_element.when_present.value="tim test competitor notes"
      client_page.save_competitor_notes_element.when_present.click
    end 

    it "客户profile页面编辑competitor note" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.edit_competitor_notes_element.when_present.click
      client_page.competitor_notes_value_element.when_present.value="tim update test competitor notes"
      client_page.editsave_competitor_notes_element.when_present.click
    end 

    it "客户profile页面删除competitor note" do
      client_page.select_first_client
      client_page.hidden_element
      message = client_page.confirm(true) do 
        client_page.delete_competitor_notes_element.when_present.click
      end
      message.should == "Are you sure you want to delete this competitor note?"
    end 

    it "客户profile页面新添加compliance notes" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.add_compliance_notes_element.when_present.click
      client_page.compliance_notes_value_element.when_present.value="tim test compliance notes"
      client_page.save_compliance_notes_element.when_present.click
    end 

    it "客户profile页面编辑compliance notes" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.edit_compliance_notes_element.when_present.click
      client_page.compliance_notes_value_element.when_present.value="tim update test compliance notes"
      client_page.editsave_compliance_notes_element.when_present.click
    end 

    it "客户profile页面删除compliance notes" do
      client_page.select_first_client
      client_page.hidden_element
      message = client_page.confirm(true) do
        client_page.delete_compliance_notes_element.when_present.click
      end
      message.should == "Are you sure you want to delete this compliance note?"
    end 

    it "客户profile页面新添加cash" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.add_cash_element.when_present.click
      client_page.cash_amount_element.when_present.value="1234"
      client_page.cash_date_element.when_present.click
      client_page.select_today
      client_page.save_cash_element.when_present.click
    end 

    #-1
    it "客户profile页面新添加cash,点击cancel" do
      pending
    end 

    it "客户profile页面编辑客户的cash" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.edit_cash_element.when_present.click
      client_page.update_cash_value_element.when_present.value="5678"
      client_page.editsave_cash_element.when_present.click
    end 

    it "客户profile页面删除cash" do
      client_page.select_first_client
      client_page.hidden_element
      message = client_page.confirm(true) do
        client_page.delete_cash_element.when_present.click
      end
      message.should == "Are you sure you want to delete this cash?"
    end 

    #-1
    it "进入clientcontacts页面" do
      pending
    end 

    it "创建客户联系人" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.client_contact_tab_element.when_present.click
      client_page.create_contact
    end
    #-1
    it "clientcontacts页面点击create group" do
      pending
    end
    #-1
    it "clientcontacts页面选择联系人，点击add to group" do
      pending
    end 
    #-1
    it "clientcontacts页面删除未完成过项目的contact" do
      pending
    end 
    #-1
    it "clientcontacts页面删除已完成项目的contact" do
      pending
    end  

    it "点击进入project-consultation页面" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.client_projects_tab_element.when_present.click
      client_page.client_projects_consultation_tab_element.when_present.click
    end 

    it "点击进入project-dataservice页面" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.client_projects_tab_element.when_present.click
      client_page.client_projects_data_tab_element.when_present.click
    end 

    it "点击进入project-gesconvey页面" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.client_projects_tab_element.when_present.click
      client_page.client_projects_ges_tab_element.when_present.click
    end 

    it "点击进入project-conference页面" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.client_projects_tab_element.when_present.click
      client_page.client_projects_conference_tab_element.when_present.click
    end 

    it "点击进入project-hrservice页面" do
      client_page.select_first_client
      client_page.hidden_element
      client_page.client_projects_tab_element.when_present.click
      client_page.client_projects_hr_tab_element.when_present.click
    end 
end
