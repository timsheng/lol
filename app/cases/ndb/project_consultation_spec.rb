#encoding: utf-8
require File.expand_path 'app/cases/spec_helper'
require File.expand_path 'app/cases/shared/action'


describe 'consultation page', :consultation do 
  
    let(:project_consultation_page)do 
      home_page = $navi.goto_home_page
      login_page = home_page.direct_to_login_page
      home_page = login_page.login "timsheng","abcd1234"
      project_consultation_page = home_page.direct_to_consultation_page
    end

  it '进入consultation project列表页面' do
      project_consultation_page.wait_until do
        project_consultation_page.title.should eql "Consultation Projects - Capvision"
      end
    end
  
  it 'consultation list页面根据默认选项进行搜索' do
      project_consultation_page.search_consultation_element.when_present.click
      project_consultation_page.wait_until do
        project_consultation_page.title.should eql "Consultation Projects - Capvision"
      end
    end

  it 'consultation list页面根据user进行搜索' do
    project_consultation_page.user_filter_element.when_present.click
    project_consultation_page.select_user_element.when_present.click
    project_consultation_page.search_consultation_element.when_present.click
    project_consultation_page.wait_until do
      project_consultation_page.project_table_list_manager.should eql "test_km1"
    end
  end
    
  it 'consultation list页面根据participants进行搜索' do
    project_consultation_page.participant_filter_element.when_present.select "KM Support"
    project_consultation_page.search_consultation_element.when_present.click
    project_consultation_page.wait_until do
      project_consultation_page.title.should eql "Consultation Projects - Capvision"
    end
  end
  
  it 'consultation list页面根据client进行搜索' do
    project_consultation_page.hidden_element
    project_consultation_page.client_filter_element.when_present.click
    project_consultation_page.select_client_element.when_present.click
    project_consultation_page.search_consultation_element.when_present.click
    project_consultation_page.wait_until do
      project_consultation_page.project_table_list_client.should eql "小樱1"
    end
  end

  it 'consultation list页面根据name进行搜索' do
    project_consultation_page.keywords_element.when_present.value="test_"
    project_consultation_page.search_consultation_element.when_present.click
    project_consultation_page.wait_until do
      project_consultation_page.project_table_list_name.should include "test_"
    end
  end
  
  # it 'consultation list页面根据info requirements进行搜索' do
  #   project_consultation_page.keywords_element.when_present.value="xtest"
  #   project_consultation_page.search_consultation_element.when_present.click
  #   project_consultation_page.first_project.should include "xtest"
  # end
  
  # it 'consultation list页面根据project description进行搜索' do
  #   project_consultation_page.input_keywords_element.when_present.set "at_test"
  #   project_consultation_page.search_consultation_element.when_present.click
  #   project_consultation_page.first_project.should include "AT_"
  # end
    
  it 'consultation list页面根据项目的industry进行搜索' do
      project_consultation_page.industry_filter_element.when_present.select "Aerospace - 航空"
      project_consultation_page.search_consultation_element.when_present.click
      project_consultation_page.wait_until do
        project_consultation_page.project_table_list_industry.should include "Aerospace - 航空"
      end
    end

    it 'consultation list页面根据项目的状态in process进行搜索' do
      project_consultation_page.status_filter_element.when_present.select "In Process"
      project_consultation_page.search_consultation_element.when_present.click
      project_consultation_page.wait_until do
        project_consultation_page.project_table_list_status.should eql "In Process"
      end
    end

    it 'consultation list页面根据项目的状态on hold进行搜索' do
      project_consultation_page.status_filter_element.when_present.select "On Hold"
      project_consultation_page.search_consultation_element.when_present.click
      project_consultation_page.wait_until do
        project_consultation_page.project_table_list_status.should eql "On Hold"
      end
    end

    it 'consultation list页面根据项目的状态complete进行搜索' do
      project_consultation_page.status_filter_element.when_present.select "Complete"
      project_consultation_page.search_consultation_element.when_present.click
      project_consultation_page.wait_until do
        project_consultation_page.project_table_list_status.should eql "Complete"
      end
    end
  
    it 'consultation list页面根据项目的状态invalid进行搜索' do
      project_consultation_page.status_filter_element.when_present.select "Invalid"
      project_consultation_page.search_consultation_element.when_present.click
    end

    it '创建consultation asia project'  do
      project_consultation_page.create_consultation_project "Asia Pacific Consultation"
    end

    it "创建consultation china project" do
      project_consultation_page.create_consultation_project "China Consultation"
    end

    it "创建consultation internation project" do
      project_consultation_page.create_consultation_project "International Consultation"
    end

    it 'consultation project info页面编辑basic information' do
      project_consultation_page.select_first_consultation
      project_consultation_page.project_info_tab_element.when_present.click
      project_consultation_page.hidden_element
      project_consultation_page.edit_project_basic_information
    end
  
  	it 'consultation project info页面编辑client contact信息' do
  		project_consultation_page.select_first_consultation
      project_consultation_page.project_info_tab_element.when_present.click
      project_consultation_page.hidden_element
      project_consultation_page.edit_project_client_contact
  	end

  	it 'consultation project info页面编辑project team' do
  		project_consultation_page.select_first_consultation
      project_consultation_page.project_info_tab_element.when_present.click
      project_consultation_page.hidden_element
      project_consultation_page.edit_project_team
  	end

  	it 'consultation project info页面编辑project requirements' do
  		project_consultation_page.select_first_consultation
      project_consultation_page.project_info_tab_element.when_present.click
      project_consultation_page.hidden_element
      project_consultation_page.edit_project_requirements
  	end
   #consultation project info页面编辑basic info必填项验证
   #it 'consultation project info page verify basic info' do
   # project_consultation_page.search_consultation_element.when_present.click
   #  first_project = project_consultation_page.first_project
   #  project_consultation_page.view_projectinfo
   #  project_consultation_page.attach_to_window(:title=> first_project+" - Capvision")
   #  project_consultation_page.project_basic_edit_element.when_present.click
   #  project_consultation_page.project_description_element.when_present.clear
   #  project_consultation_page.project_basic_edit_element.when_present.click
   #  project_consultation_page.verify_alert_element.when_present.text.should include "Project Description cannot be blank."
   #end
  
   #consultation project info页面project requirements信息栏必填项验证
   #it 'consultation project info page verify project requirements info' do
   #   project_consultation_page.search_consultation_element.when_present.click
   #   first_project = project_consultation_page.first_project
   #   project_consultation_page.view_projectinfo
   #   project_consultation_page.attach_to_window(:title=> first_project+" - Capvision")
   #   project_consultation_page.edit_project_requirements_element.when_present.click
   #   project_consultation_page.consultation_key_questions_element.when_present.set ""
   #   project_consultation_page.edit_project_requirements_element.when_present.click
   #  project_consultation_page.project_info_requirement_alert_element.when_present.text.should eql "Key Questions cannot be blank."
   #end
  	
    it '进入consultation project的compliance页面' do
      project_consultation_page.select_first_consultation
      project_consultation_page.project_compliance_tab_element.when_present.click
    end
  
    it '进入consultation project的client info页面' do
      project_consultation_page.select_first_consultation
      project_consultation_page.project_client_info_tab_element.when_present.click
    end
  
    it '进入consultation project的client contacts页面' do
      project_consultation_page.select_first_consultation
      project_consultation_page.project_client_contact_tab_element.when_present.click
    end
  
    it 'consultation client contacts页面点击客户联系人name' do
      project_consultation_page.select_first_consultation
      project_consultation_page.project_client_contact_tab_element.when_present.click
      project_consultation_page.first_client_contact_element.when_present.click
    end
  
    it '进入consultation project的emails页面' do
      project_consultation_page.select_first_consultation
      project_consultation_page.project_emails_tab_element.when_present.click
    end
    
    #consultation communication email页面点击communication-email
    #it 'should go to email on consultation page' do
    #  project_consultation_page.search_consultation_element.when_present.click
    #  first_project=project_consultation_page.first_project
    #  project_consultation_page.choose_project_element.when_present.click
    #  project_consultation_page.attach_to_window(:title=> first_project+" - Task List - Capvision")
    #  project_consultation_page.go_to_project_emails_page
    #  project_consultation_page.go_to_project_emails_page_element.when_present.click
    #  sleep 2
    #  project_consultation_page.title.should eql "Emails - AT_我叫weijun - Capvision"
    #end
  
    it '进入consultation project的sms页面' do
      project_consultation_page.select_first_consultation
      project_consultation_page.project_sms_tab_element.when_present.click
    end
  
    #consultation communication email页面点击communication-sms
    #it 'consultation communication email page click the communication-sms link' do
    #  project_consultation_page.search_consultation_element.when_present.click
    #  first_project=project_consultation_page.first_project
    #  project_consultation_page.choose_project_element.when_present.click
    #  project_consultation_page.attach_to_window(:title=> first_project+" - Task List - Capvision")
    #  project_consultation_page.go_to_project_sms_page
    #  project_consultation_page.go_to_project_sms_page_element.when_present.click
    #  sleep 2
    #  project_consultation_page.title.should eql "SMS - AT_我叫weijun - Capvision"
    #end
  
    it 'consultation list页面更改一个项目的状态为in process' do
      project_consultation_page.hidden_element
      project_consultation_page.user_filter_element.when_present.click
      project_consultation_page.select_user_element.when_present.click
      project_consultation_page.search_consultation_element.when_present.click
      project_consultation_page.hidden_element
      project_consultation_page.first_project_checkbox_element.when_present.check
      project_consultation_page.choose_action_element.when_present.select "In Process"
      project_consultation_page.project_update_btn_element.when_present.click
      sleep 30
      project_consultation_page.hidden_element
      project_consultation_page.alert_success.should include " status changed successfully."
    end
    
    it 'consultation list页面更改多个项目的状态为in process' do   
      project_consultation_page.hidden_element
      project_consultation_page.user_filter_element.when_present.click
      project_consultation_page.select_user_element.when_present.click
      project_consultation_page.search_consultation_element.when_present.click
      project_consultation_page.hidden_element
      project_consultation_page.first_project_checkbox_element.when_present.check
      project_consultation_page.second_project_checkbox_element.when_present.check
      project_consultation_page.choose_action_element.when_present.select "In Process"
      project_consultation_page.project_update_btn_element.when_present.click
      sleep 30
      project_consultation_page.hidden_element
      project_consultation_page.alert_success.should include "status changed successfully."
    end 
    
    it 'consultation list页面更改多个项目的状态为on hold' do
      project_consultation_page.hidden_element
      project_consultation_page.user_filter_element.when_present.click
      project_consultation_page.select_user_element.when_present.click
      project_consultation_page.search_consultation_element.when_present.click
      project_consultation_page.first_project_checkbox_element.when_present.check
      project_consultation_page.second_project_checkbox_element.when_present.check
      project_consultation_page.choose_action_element.when_present.select "On Hold"
      message = project_consultation_page.alert do
        project_consultation_page.project_update_btn_element.when_present.click
      end
      message.should == "You cannot choose multi-project for this operation."
    end
     
    it 'consultation list页面更改多个项目的状态为invalid' do
      project_consultation_page.hidden_element
      project_consultation_page.user_filter_element.when_present.click
      project_consultation_page.select_user_element.when_present.click
      project_consultation_page.search_consultation_element.when_present.click
      project_consultation_page.first_project_checkbox_element.when_present.check
      project_consultation_page.second_project_checkbox_element.when_present.check
      project_consultation_page.choose_action_element.when_present.select "Invalid"
      message = project_consultation_page.alert do
        project_consultation_page.project_update_btn_element.when_present.click
      end
      message.should == "You cannot choose multi-project for this operation."
    end
    
    it 'consultation list页面更改多个项目的状态为complete' do
      project_consultation_page.hidden_element
      project_consultation_page.user_filter_element.when_present.click
      project_consultation_page.select_user_element.when_present.click
      project_consultation_page.search_consultation_element.when_present.click
      project_consultation_page.first_project_checkbox_element.when_present.check
      project_consultation_page.second_project_checkbox_element.when_present.check
      project_consultation_page.choose_action_element.when_present.select "Complete"
      message = project_consultation_page.alert do
        project_consultation_page.project_update_btn_element.when_present.click
      end
      message.should == "You cannot choose multi-project for this operation."
    end

  it 'consultation list页面点击view按钮' do
    project_consultation_page.hidden_element
    project_consultation_page.search_consultation_element.when_present.click
    project_consultation_page.project_view_btn_element.when_present.click
  end

  it 'consultation list页面upload doc文件' do
  	project_consultation_page.hidden_element
    project_consultation_page.search_consultation_element.when_present.click
    project_consultation_page.upload_project_attachment(File.expand_path(File.join('.') , 'app/attachment/NDB-Tables.doc')) 
  end

  it 'consultation list页面upload docx文件' do
    project_consultation_page.hidden_element
    project_consultation_page.search_consultation_element.when_present.click
    project_consultation_page.upload_project_attachment(File.expand_path(File.join('.') , 'app/attachment/sprint1.docx')) 
  end

  it 'consultation list页面upload pdf文件' do
    project_consultation_page.hidden_element
    project_consultation_page.search_consultation_element.when_present.click
    project_consultation_page.upload_project_attachment(File.expand_path(File.join('.') , 'app/attachment/watir-webdriver-cn.pdf')) 
  end

  it 'consultation list页面upload msg文件' do
    project_consultation_page.hidden_element
    project_consultation_page.search_consultation_element.when_present.click
    project_consultation_page.upload_project_attachment(File.expand_path(File.join('.') , 'app/attachment/test_msg_file.msg')) 
  end

  it 'consultation list页面删除没有completed task的项目' do
  	project_consultation_page.hidden_element
    project_consultation_page.user_filter_element.when_present.click
    project_consultation_page.select_user_element.when_present.click
    project_consultation_page.keywords_element.when_present.value="tim_"
    project_consultation_page.search_consultation_element.when_present.click
    message=project_consultation_page.confirm(true) do
      project_consultation_page.delete_project_btn_element.when_present.click
    end
    message.should == "Are you sure you wish to delete this project?"
  end
  
  it 'consultation list页面删除有completed task的项目' do
  	project_consultation_page.hidden_element
    project_consultation_page.user_filter_element.when_present.click
    project_consultation_page.select_user_element.when_present.click
    project_consultation_page.keywords_element.when_present.value="test111"
    project_consultation_page.search_consultation_element.when_present.click
    message=project_consultation_page.alert do
      project_consultation_page.delete_project_btn_element.when_present.click
    end
    message.should == "You can not delete this project, because it has completed tasks."
  end

  #consultation list页面点击feedback图标-----功能怎么没了~~~what happen~~~~
  #it 'consultation_project feedback function' do
  #  project_consultation_page.search_consultation_element.when_present.click
  #  project_consultation_page.project_feedback
  #  project_consultation_page.project_choosefeedback = "5-Very Helpful"
  #  sleep 2
  #  message = project_consultation_page.alert do
  #    sleep 1
  #    project_consultation_page.feedback_save_element.when_present.click
  #  end
  #  sleep 2
  #  message.should == "Save Successful!"
  #end
  
  # it 'task list_page update completed task status to 10 mins test',:test do
  # project_consultation_page.search_consultation_element.when_present.click
  # project_consultation_page.select_project
  # sleep 1
  # project_consultation_page.attach_to_window(:title=>"AT_我叫weijun - Task List - Capvision")
  # project_consultation_page.add_consultant
  # project_consultation_page.change_recommended
  # project_consultation_page.attach_to_window(:title=>"Compliance - AT_我叫weijun - Capvision")
  # project_consultation_page.change_ca_to_NA
  # project_consultation_page.task_list
  # project_consultation_page.change_recommend_to_arrange
  # project_consultation_page.change_arrange_to_complete
  # project_consultation_page.change_completed_to_10minstest
  # project_consultation_page.change_completed_to_deleted
  #end
  #consultation task list添加顾问功能
  #consultation task list页面成功添加顾问提示弹窗点击go to this project list
  #consultation task list页面成功添加顾问提示弹窗点击ok

  it 'consultation task页面添加顾问到项目' do
    project_consultation_page.select_first_consultation
    project_consultation_page.add_consultant
    project_consultation_page.text.include? "Not Contacted"
  end
  
  #it 'task list_page update change ca to not null' do
  # project_consultation_page.search_consultation_element.when_present.click
  # project_consultation_page.select_project
  # sleep 2
  # project_consultation_page.attach_to_window(:title=>"AT_我叫weijun - Task List - Capvision")
  # project_consultation_page.change_ca_to_signment
  #end
  #consultation task list complete页面未经过recommend和arrange的task执行complete验证
  #it 'task list_page update the task which unrecommand and unarranged to completed' do
  #  project_consultation_page.search_consultation_element.when_present.click
  # project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.first_task_checkbox_element.when_present.click
  #  project_consultation_page.choose_task_action_element.when_present.select "Completed"
  #  project_consultation_page.update_taskstatus_element.when_present.click
  #  project_consultation_page.alert_error_info_element.when_present.text.should include "You cannot complete this task before it has been recommended and arranged."
  #end
  it 'consultation task页面task状态由not contacted更改为recommended'  do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.change_notcontacted_to_recommended
  end

  it 'consultation task页面task状态由recommended更改为arranged(没有任何要求)' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.change_recommended_to_arranged
  end

   it 'consultation task页面单个task点击send sms按钮' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.check_first_task_checkbox
    project_consultation_page.task_list_send_sms_btn_element.when_present.click
    project_consultation_page.confirm_send_sms_element.when_present.click

  end

  it 'consultation task页面点击cancel calendar按钮' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    message = project_consultation_page.confirm(true) do
      project_consultation_page.cancel_calendar_btn_element.when_present.click
    end
    message.should=="Are you sure to cancel this calendar?"
  end

  it 'consultation task页面点击+,添加task的客户联系人' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    message=project_consultation_page.confirm(true) do
      project_consultation_page.add_client_contact
    end
    message.should == "Are you sure to add the client contact on the task ?"
  end


  it 'consultation task页面task状态由arranged更改为completed(payment incompleted)' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.change_arranged_to_completed_pic
  end

  it 'consultation task页面点击$按钮,task状态由completed(payment incompleted)更改为completed(payment inprocess)'  do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.change_pic_to_pip
  end

  it 'consultation task页面task状态由completed(payment inprocess)更改为completed(payment completed)' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.change_pip_to_pc
  end

  it 'consultation task页面task状态为completed(payment completed),点击CL'  do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.change_cl
  end

  it 'consultation task页面task状态为completed(payment completed),点击CO,只修改co.h' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.change_consultant_hour
  end

  it 'consultation task页面task状态为completed(payment completed),点击CO,修改co.cash'  do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.change_consultant_cash
  end

  it 'consultation task页面添加多个顾问' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.add_two_consultants
  end

  it 'consultation task页面task状态更改为not selected(i have not contactd consultatant)' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.check_last_task_checkbox
    project_consultation_page.change_notcontacted_to_notselected 0
  end

  it 'consultation task页面task状态更改为not selected(contact by phone)'  do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.check_last_task_checkbox
    project_consultation_page.change_notcontacted_to_notselected 1
  end

  it 'consultation task页面task状态更改为not selected(send email to consultant)' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.check_last_task_checkbox
    project_consultation_page.change_notcontacted_to_notselected 2
    project_consultation_page.send_email_element.when_present.click
  end

  it 'consultation task页面task状态更改为not selected(send sms to consultant)' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.check_last_task_checkbox
    project_consultation_page.change_notcontacted_to_notselected 3
    project_consultation_page.send_email_element.when_present.click
  end

  
  it 'consultation task页面rate为1高费率顾问标识验证' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.high_rate_img_element.attribute(:title).should eql "This is high rate consultant"
  end
  
  #consultation task need compliance approve页面对需要client approve的task执行arrange操作
  #it 'task list_page update the task which unrecommand and unarranged to arrange' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.first_task_checkbox_element.when_present.click
  #  project_consultation_page.choose_task_action_element.when_present.select "Arranged"
  #  project_consultation_page.update_taskstatus_element.when_present.click
  #  project_consultation_page.alert_error_info_element.when_present.text.should include "The tasks cannot be arranged because it should be recommended first."
  #end
  
  #consultation task list recommend页面CA不符要求的提示弹窗点击cancel
  #it 'consultation task list page recommend task without ca then click cancel btn' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.first_task_checkbox_element.when_present.click
  #  project_consultation_page.choose_task_action_element.when_present.select "Recommended"
  #  project_consultation_page.update_taskstatus_element.when_present.click
  #  project_consultation_page.cancel_updatetask_element.when_present.click
  #end
  
  #非recommend状态的task无法执行arrange操作验证
  #it 'consultation task list page unrecommand task update status to arranged' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.first_task_checkbox_element.when_present.click
  #  project_consultation_page.choose_task_action_element.when_present.select "Arranged"
  #  project_consultation_page.update_taskstatus_element.when_present.click
  #  project_consultation_page.alert_error_info_element.when_present.text.should include "The tasks cannot be arranged because it should be recommended first."
  #end
  
  ##recommend step1:warning bar无内容显示为空
  #it 'consultation task list page recommend task verify warning bar' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.first_task_checkbox_element.when_present.click
  #  project_consultation_page.choose_task_action_element.when_present.select "Recommended"
  #  project_consultation_page.update_taskstatus_element.when_present.click
  #  project_consultation_page.recommend_warning_bar_info_element.when_present.text.should include " CA does not match project requirement"
  #end
  
  #recommend step1:warning bar内容显示红色字体
  #it 'consultation task list page recommend task verify red warning' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.first_task_checkbox_element.when_present.click
  #  project_consultation_page.choose_task_action_element.when_present.select "Completed"
  #  project_consultation_page.update_taskstatus_element.when_present.click
  #  project_consultation_page.alert_error_info_element.when_present.text.should include "You cannot complete this task before it has been recommended and arranged"
  #end  
  
  #recommend step1:consultant链接点击
  #it 'consultation task list page task recommend click consultant link' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.click_consultant_link_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=> "Han - Capvision")
  #  project_consultation_page.consultation_title_element.when_present.text.should eql "Han"
  #end
  
   #consultants tasks页面不更改任何内容，将tasks状态更改为completed
   #it 'consultation project complete task without fill any data' do
   #  project_consultation_page.filter
   #  project_consultation_page.select_project_element.when_present.click
   #  project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
   #  project_consultation_page.first_task_checkbox_element.when_present.click
   #  project_consultation_page.choose_task_action_element.when_present.select("Completed")
   #  project_consultation_page.update_taskstatus_element.when_present.click    # project_consultation_page.text.should include "You cannot complete this task before it has been recommended and arranged"
   #end
    #consultants tasks页面填写date,将tasks状态更改为completed
    #it 'consultation project fill date then complete task' do
    #  project_consultation_page.filter
    #  project_consultation_page.select_project_element.when_present.click
    #  project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
    #  project_consultation_page.update_task_link_element.when_present.click
    #  project_consultation_page.input_consultation_date="2015-07-01"
    #  sleep 2
    #  project_consultation_page.save_consultaion_element.when_present.click
    # project_consultation_page.first_task_checkbox_element.when_present.click
    #  project_consultation_page.choose_task_action_element.when_present.select("Completed")
    #  project_consultation_page.update_taskstatus_element.when_present.click
    #  project_consultation_page.text.should include "You cannot complete this task before it has been recommended and arranged"
    #end
    #consultants tasks页面填写date，consultant hour,将task状态更改为completed
    #it 'consultation project fill date and consultant hour then complete task' do
    #  project_consultation_page.filter
    #  project_consultation_page.select_project_element.when_present.click
    #  project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
    #  project_consultation_page.update_task_link_element.when_present.click
    #  project_consultation_page.input_consultation_date="2015-07-01"
    # sleep 2
    #  project_consultation_page.input_consultation_hour="1"
    # project_consultation_page.save_consultaion_element.when_present.click
    #  project_consultation_page.first_task_checkbox_element.when_present.click
    #  project_consultation_page.choose_task_action_element.when_present.select("Completed")
    #  project_consultation_page.update_taskstatus_element.when_present.click
    #  project_consultation_page.text.should include "You cannot complete this task before it has been recommended and arranged"
    #end
  
  #不满足compliance要求情况下改变task状态为selected
  # it 'task list_page update task status to selected without compliance requirement' do
    # project_consultation_page.filter
    # project_consultation_page.select_project
    # sleep 1
    # project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
    # sleep 2
    # project_consultation_page.change_selected_without_compliace
  # end

  #-1
  #consultation task list页面T&C不满足项目要求标红验证
   # it 'consultation task list page verify the T&C requirement ' do
   #   project_consultation_page.filter
   #   project_consultation_page.select_project_element.when_present.click
   #   project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
   #   project_consultation_page.verify_row_is_red.should eql "red"
   # end
    
    #consultation task list页面Training不满足项目要求标红验证
  #  it 'consultation task list page verify the Training requirement ' do
  #    project_consultation_page.filter
  #    project_consultation_page.select_project_element.when_present.click
  #    project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
  #    project_consultation_page.verify_row_is_red.should eql "red"
  #  end

  #consultation task edit页面点击cancel取消编辑
  #it 'consultation task list page edit task then click cancel btn' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=> project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.update_task_link_element.when_present.click
  #  project_consultation_page.cancel_btn_element.when_present.click
  #end
  
  #改变ca为null
  #it 'task list_page update change ca to null' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.change_ca_to_NA
  #end
  
  #recommend step1 :ID必填验证
  #it 'consultation task list page recommend task step 1 verify ID' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Recommended"
  #  project_consultation_page.input_recommend_id_element.when_present.clear
  #  project_consultation_page.next_step_element.when_present.click
  #  project_consultation_page.verify_recommand_ID_element.when_present.text.should include "ID 不可为空白"
  #end
  
  #recommend step1 :company编辑图标点击
  #it 'consultation task list page recommend task step 1 verify company and position link' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Recommended"
  #  project_consultation_page.choose_position_element.when_present.click
  #end
  
  #recommend step1 :工作经历编辑弹窗点击确认
  #it 'consultation task list page recommend task step 1 edit position' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Recommended"
  #  project_consultation_page.choose_position_element.when_present.click
  #  project_consultation_page.ok_btn_element.when_present.click
  #end
  
  #recommend step1 ：工作经历编辑弹窗点击取消
  #it 'consultation task list page recommend task step 1 edit position then click cancel' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Recommended"
  #  project_consultation_page.choose_position_element.when_present.click
  #  project_consultation_page.cancel_updatetask_element.when_present.click
  #end
  
  #recommend step1：填写完整信息点击next
  #it 'consultation task list page recommend task step 1 edit info then click next' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Recommended"
  #  project_consultation_page.next_step_element.when_present.click
  #end
  
  #recommend step1：填写完整信息点击cancel
  #it 'consultation task list page recommend task step 1 edit info then click cancel' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Recommended"
  #  project_consultation_page.cancel_updatetask_element.when_present.click
  #end
  
  #recommend step2: 点击previous
  #it 'consultation task list page recommend task step 2 click previous btn' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Recommended"
  #  project_consultation_page.next_step_element.when_present.click
  #  project_consultation_page.previous_btn_element.when_present.click
  #  project_consultation_page.next_step_element.when_present.text.should eql "Next"
  #end
  
  #recommend step2: check弹窗点击cancel
  #it 'consultation task list page recommend task step 2 click cancel btn on the popup' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Recommended"
  #  project_consultation_page.next_step_element.when_present.click
  #  project_consultation_page.input_mail_to_element.when_present.click
  #  project_consultation_page.select_email_element.when_present.click
  #  project_consultation_page.send_email_element.when_present.click
  #  project_consultation_page.cancel_send_mail_element.when_present.click
  #  project_consultation_page.previous_btn_element.when_present.text.should eql "Previous"
  #end
  
  #recommend step2: check弹窗点击continue
  #it 'consultation task list page recommend task step 2 click continue btn on the popup' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Recommended"
  #  project_consultation_page.next_step_element.when_present.click
  #  project_consultation_page.input_mail_to_element.when_present.click
  #  project_consultation_page.select_email_element.when_present.click
  #  project_consultation_page.send_email_element.when_present.click
  #  project_consultation_page.continue_send_mail_element.when_present.click
  #  project_consultation_page.consultation_title_element.when_present.text.should include "CON"
  #end
  
  
  #arrange step1：顾问名链接点击
  #it 'task list_page arrange step1 click the consultant link' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Arranged"
  #  project_consultation_page.consultant_link_when_arrange_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=>"Han - Capvision")
  #  project_consultation_page.consultation_title_element.when_present.text.should include "Han"
  #end

  #arrange step1：访谈时间必填验证
  #it 'task list_page arrange step1 verify consultant date should not be null' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Arranged"
  #  project_consultation_page.consultant_date_element.when_present.clear
  # project_consultation_page.consultant_date_element.when_present.set ""
  #  project_consultation_page.change_status_element.when_present.click
    #project_consultation_page.consultant_date_element.when_present.text.should include "00:00"
  #end 
  
  #arrange step1：nick name必填验证
  #it 'task list_page arrange step1 verify nick name should not be null' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Arranged"
  #  project_consultation_page.nick_name_element.when_present.clear
  #  project_consultation_page.change_status_element.when_present.click
  #  project_consultation_page.verify_nick_name_element.when_present.text.should include "请填写 Nick Name"
  #end
  
  #arrange step1:填写完整信息点击next
  #it 'task list_page arrange step1 fill all data and click next btn' do
  #  project_consultation_page.filter
  # project_consultation_page.select_and_update_task "Arranged"
  #  project_consultation_page.next_step_element.when_present.click
  #  project_consultation_page.previous_btn_element.when_present.text.should eql "Previous"
  #end
  
  #arrange step1:填写完整信息点击cancel
  #it 'task list_page arrange step1 fill all data and click cancel btn' do
  # project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Arranged"
  #  project_consultation_page.cancel_updatetask_element.when_present.click
  #  project_consultation_page.consultation_title_element.when_present.text.should include "CON"
  #end
  
  #arrange step1：填写完整信息点击change status
  #it 'task list_page arrange step1 fill all data and click change status btn' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Arranged"
  #  project_consultation_page.change_status_element.when_present.click
  #  project_consultation_page.consultation_title_element.when_present.text.should include "CON"
  #end
  
  #arrange step2:勾选send calendar to client选框
  #it 'task list_page arrange step2 check the send calendar to client' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Arranged"
  #  project_consultation_page.next_step_element.when_present.click
  #  project_consultation_page.send_calendar_email_element.when_present.click
  #end
  
  #arrange step2: 点击previous
  #it 'task list_page arrange step2 click the previous btn' do
  #  project_consultation_page.filter
  # project_consultation_page.select_and_update_task "Arranged"
  #  project_consultation_page.next_step_element.when_present.click
   # project_consultation_page.previous_btn_element.when_present.click
  #  project_consultation_page.next_step_element.when_present.text.should eql "Next"
  #end  
  
  #arrange step2: 点击cancel
  #it 'task list_page arrange step2 click the cancel btn' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Arranged"
  #  project_consultation_page.next_step_element.when_present.click
  #  project_consultation_page.cancel_arrange_step2_element.when_present.click
  #  project_consultation_page.consultation_title_element.when_present.text.should include "CON"
  #end  
  
  #consultation task edit页面start time大于end time提示验证
  #it 'consultation task edit page verify alert (start time more than end time)' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project
  #  project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.update_task_link_after_calender_element.when_present.click
  #  project_consultation_page.input_start_time_element.when_present.set "23:59"
  # project_consultation_page.input_end_time_element.when_present.set ""
  #  project_consultation_page.save_consultaion_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Start Date不能大于End Date"
  #end

  #consultation task list页面send calendar功能验证
  #it 'task list_page send calendar to client when task is arranged' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project
  #  sleep 1
  #  project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.send_calendar
  #end
  
  

  
 
  #consultation task list pending页面对单个task执行pending操作
  # it 'task list_page update task status to pending' do
    # project_consultation_page.filter
    # project_consultation_page.select_project_element.when_present.click
    # project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
    # project_consultation_page.change_pending
    # project_consultation_page.text.should include "Send Unselected Notice"
  # end

  it 'consultation task页面多个task点击send sms按钮'  do
      project_consultation_page.select_first_consultation
      project_consultation_page.hidden_element
      project_consultation_page.check_first_task_checkbox
      project_consultation_page.check_last_task_checkbox
      message=project_consultation_page.alert do
          project_consultation_page.task_list_send_sms_btn_element.when_present.click
      end
      message.should == "You can't choose multi-task for this operation."

  end
  #consultation task list pending页面对多个task执行pending操作
  # it 'task list_page update two tasks status to pending' do
    # project_consultation_page.filter
    # project_consultation_page.select_project_element.when_present.click
    # project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
    # project_consultation_page.change_pending
    # project_consultation_page.text.should include "Send Unselected Notice"
  # end

  
  #consultation task list complete页面consultation date必填验证
  #it 'consultation task list page verify consultation date when update task to complete' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Completed"
  #  project_consultation_page.input_consultation_date_element.when_present.clear
  #  project_consultation_page.save_complete_page_btn_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Consultation Date cannot be blank."
  #end
  
  #consultation task list complete页面访谈时间大于当前时间验证
  #consultation task list complete页面start time大于end time提示验证
  #it 'consultation task list page verify consultation date when update task to complete' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Completed"
  #  project_consultation_page.input_end_time_element.when_present.clear
  #  project_consultation_page.input_start_time_element.when_present.set "23:59"
  #  project_consultation_page.save_complete_page_btn_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Start Date不能大于End Date"
  #end
  
  #consultation task list complete页面type of interview必填验证
  #it 'consultation task list page verify type of interview when update task to complete' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Completed"
  #  project_consultation_page.consultation_task_type_of_interview_element.when_present.select "-Please choose-"
  #  project_consultation_page.save_complete_page_btn_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Type Of Interview cannot be blank."
  #end

  #consultation task list complete页面client hour必填验证
  #it 'consultation task list page verify client hour when update task to complete' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Completed"
  #  project_consultation_page.input_task_receipts_hours_element.when_present.clear
  #  project_consultation_page.save_complete_page_btn_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Client Hour cannot be blank."
  #end

  #consultation task list complete页面client hour纯数字验证
  #it 'consultation task list page verify client hour should be a number when update task to complete' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Completed"
  #  project_consultation_page.input_task_receipts_hours_element.when_present.set "1a.00"
  #  project_consultation_page.save_complete_page_btn_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Client Hour must be a number."
  #end

  #consultation task list complete页面billing note必填验证
  #it 'consultation task list page verify billing note when update task to complete' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Completed"
  #  project_consultation_page.input_task_receipts_billnotes_element.when_present.clear
  #  project_consultation_page.save_complete_page_btn_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Billing Notes cannot be blank."
  #end

  #consultation task list complete页面consultant hour必填验证
  #it 'consultation task list page verify consultant hour when update task to complete' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Completed"
  #  project_consultation_page.input_task_payment_hours_element.when_present.clear
  # project_consultation_page.save_complete_page_btn_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Consultant Hour cannot be blank."
  #end

  #consultation task list complete页面consultant hour纯数字验证
  #it 'consultation task list page verify consultant hour should be a number when update task to complete' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Completed"
  #  project_consultation_page.input_task_payment_hours_element.when_present.set "1a.00"
  #  project_consultation_page.save_complete_page_btn_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Consultant Hour must be a number."
  #end
  
  #consultation task list complete页面send feedback Email To Client勾选框验证
  #it 'consultation task list page check the send feedback email to chient checkbox' do
  #  project_consultation_page.filter
  # project_consultation_page.select_and_update_task "Completed"
  #  project_consultation_page.send_mail_client_box_element.when_present.click
  #  project_consultation_page.send_mail_client_box_element.when_present.checked?.should eql true
  #end
  
  #consultation task list complete页面点击cancel
  #it 'consultation task list compelte page click the cancel btn' do
  # project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Completed"
  #  project_consultation_page.cancel_updatetask_element.when_present.click
  #  project_consultation_page.consultation_title_element.when_present.text.should include "CON"
  #end

  it 'consultation task页面多个task状态更改为unsuccessful interview' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.check_second_task_checkbox
    project_consultation_page.check_last_task_checkbox
    project_consultation_page.choose_task_action_element.when_present.select "Unsuccessful interview"
    project_consultation_page.update_task_status_element.when_present.click
    project_consultation_page.alert_error_info_element.when_present.text.should include "You cannot choose multiple tasks."
  end
  
  it 'consultation task页面单个task状态更改为unsuccessful interview' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.check_last_task_checkbox
    project_consultation_page.choose_task_action_element.when_present.select "Unsuccessful interview"
    project_consultation_page.update_task_status_element.when_present.click
    project_consultation_page.unsuccess_submit_btn_element.when_present.click
  end

  #consultant task list unsuccessful interview页面Send Feedback Email To Consultant勾选验证
  #it 'consultation task list unsuccessful interview page check send feedback email to consultant box' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Unsuccessful interview"
  #  project_consultation_page.send_mail_consultant_box_element.when_present.click
  #  project_consultation_page.send_mail_consultant_box_element.when_present.checked?.should eql true
  #end

  #consultant task list unsuccessful interview页面Cancel点击
  #it 'consultation task list unsuccessful interview page click the cancel btn' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_and_update_task "Unsuccessful interview"
  #  project_consultation_page.cancel_updatetask_element.when_present.click
  #  project_consultation_page.consultation_title_element.when_present.text.should include "CON"
  #end

  #consultant task list unsuccessful interview页面submit点击
  
  #consultation task edit页面compete状态task的client hour必填验证
  #it 'consultation task edit page verify client hour when task is completed' do
  #  project_consultation_page.filter
  # project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.update_task_link_element.when_present.click
  #  project_consultation_page.input_task_receipts_hours_element.when_present.clear
  #  project_consultation_page.save_consultaion_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Client Hour cannot be blank."
  #end
  
  #consultation task edit页面compete状态task的billing notes必填验证
  #it 'consultation task edit page verify billing notes when task is completed' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.update_task_link_element.when_present.click
  #  project_consultation_page.input_task_receipts_billnotes_element.when_present.clear
  #  project_consultation_page.save_consultaion_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Billing Notes cannot be blank."
  #end

  #consultation task edit页面compete状态task的consultant hour必填验证
  #it 'consultation task edit page verify consultant hour when task is completed' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.update_task_link_element.when_present.click
  #  project_consultation_page.input_task_payment_hours_element.when_present.clear
  #  project_consultation_page.save_consultaion_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Consultant Hour cannot be blank."
  #end



  it 'consultation task页面删除completed task' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.change_completed_to_deleted
    project_consultation_page.text.include? "The task Test1Ryan has been completed, you can't change its' status. "
  end
  
  it 'consultation task页面编辑task，点击save' do 
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.update_task
  end
  
  #compliance页面全部选填后更新没有联系人的状态的task状态为selected
  #consultation compliance页面T&C下拉菜单选取
  #consultation compliance页面CA下拉菜单选取
  #consultation compliance页面capvision or client approval设置为yes效果验证
  # it 'task list_page update no contact task to selected with all compliance approve' do 
    # project_consultation_page.filter
    # project_consultation_page.select_project_element.when_present.click
    # first_project = project_consultation_page.first_project
    # project_consultation_page.attach_to_window(:title=>first_project+" - Task List - Capvision")
    # project_consultation_page.tc
    # project_consultation_page.attach_to_window(:title=>"Compliance - "+first_project+" - Capvision")
    # project_consultation_page.client_agreement
    # project_consultation_page.training
    # project_consultation_page.capvision_approval
    # project_consultation_page.client_approval
  # end
  #compliance页面全部选填后将recommend状态的task改为selected状态
  # it 'task list_page update recommend task to selected with all compliance approve' do 
    # project_consultation_page.filter
    # project_consultation_page.select_project_element.when_present.click
    # project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
    # project_consultation_page.change_recommended
    # project_consultation_page.change_to_selected
  # end
  
  #在not approve情况下将selected状态的task变为arranged状态
  #it 'task list_page update selected task to arranged without approve' do 
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.change_seleted_to_arranged
  #end


  
  it 'consultation task页面点击task feedback按钮' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.update_task_feedback
    message = project_consultation_page.alert do
        project_consultation_page.save_task_feedback_element.when_present.click
      end
    message.should == "Save Successful!"
  end
  
  it 'consultation task页面更新km notes' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.update_km_notes
  end
  #-1
  it 'consultation task页面点击order(task排序)' do
    pending
  end

  it 'consultation task页面根据region进行筛选task' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.filter_by_region
    project_consultation_page.text.should include "International.C"
  end

  it 'consultation task页面根据consultant name进行筛选task' do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.search_task
  end


  it 'consultation task页面点击FO'  do
    project_consultation_page.select_first_consultation
    project_consultation_page.hidden_element
    project_consultation_page.perform_fo
    project_consultation_page.get_fo_status.should include "Recommended"
  end
  

  
  #consultation list页面项目反馈信息必填项验证
  #it 'consultation list page feedback' do
  #  project_consultation_page.filter
  #  project_consultation_page.project_feedback_link
  #  message = project_consultation_page.alert do
  #    project_consultation_page.save_project_feedback_element.when_present.click
  #  end
  #  message.should == "please choose service quality"
  #end
  
  #consultation list页面取消项目删除操作
  #it 'consultation list page' do
  #  project_consultation_page.filter
  #  message = project_consultation_page.confirm(false) do
  #    project_consultation_page.delete_project_element.when_present.click
  #  end
  #end

  #create consultation页面建项目step2必填项验证
  #it 'create consultation page verify step1' do
  #  project_consultation_page.project_create_btn_element.when_present.click
  #  project_consultation_page.project_name_element.when_present.set "AT_我叫weijun"
  #  project_consultation_page.project_description_element.when_present.set "attest_consultation adad@!#!@3  123"
  #  project_consultation_page.select_industry_element.when_present.select "Agriculture - 农业"
  #  project_consultation_page.next_element.when_present.click
  #  project_consultation_page.save_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Client cannot be blank."
  #end
  
  #create consultation页面建项目step1 [Consultants Requested]纯数字输入验证
  #it 'create consultation page verify step1 consultants requested' do
  #  project_consultation_page.project_create_btn_element.when_present.click
  #  project_consultation_page.input_consultants_requested_element.when_present.set "6d"
  #  project_consultation_page.next_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Consultants Requested must be a number."
  #end

  #create consultation页面建项目step1 [Consultants Expected]纯数字输入验证
  #it 'create consultation page verify step1 consultants expected' do
  #  project_consultation_page.project_create_btn_element.when_present.click
  #  project_consultation_page.input_consultants_expected_element.when_present.set "6d"
  #  project_consultation_page.next_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Consultants Expected must be a number."
  #end

  #create consultation页面建项目step1 [price]文本框纯数字输入验证
  #it 'create consultation page verify step1 price' do
  #  project_consultation_page.project_create_btn_element.when_present.click
  #  project_consultation_page.input_consultants_price_element.when_present.set "6d"
  #  project_consultation_page.next_element.when_present.click
  #  project_consultation_page.verify_alert_element.when_present.text.should include "Price must be a number."
  #end
  
  #create consultation页面建项目step1 [price]单位选项验证
  #it 'create consultation page verify step1 the selection of price type' do
  #  project_consultation_page.project_create_btn_element.when_present.click
  #  project_consultation_page.select_currency_element.when_present.select "RMB"
  #  project_consultation_page.select_currency_element.when_present.select "USD"
  #end

  #create consultation页面建项目step1 [cancel]取消创建项目操作验证
  #it 'create consultation page step1 click cancel btn' do
  #  project_consultation_page.project_create_btn_element.when_present.click
  #  project_consultation_page.cancel_btn
  #end

  #consultation list页面不选中任何项目执行update操作
  #it 'consultation list page update project without select project' do
  #  project_consultation_page.filter
  #  project_consultation_page.choose_action_element.when_present.select "In Process"
  #  message = project_consultation_page.alert do
  #    project_consultation_page.project_update_btn_element.when_present.click
  #  end
  #  message.should == "No projects selected."
  #end

  #consultation list页面选中单个项目不选中执行动作点击update
  #it 'consultation list page update project without select action' do
  #  project_consultation_page.filter
  #  project_consultation_page.project_checkbox_element.when_present.click
  #  message = project_consultation_page.alert do
  #    project_consultation_page.project_update_btn_element.when_present.click
  #  end
  #  message.should == "Please choose Action."
  #end

  #consultation task list页面不选中任何项目执行update操作
  #it 'consultation task list page update project without select project' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.choose_task_action_element.when_present.select "Arranged"
  #  project_consultation_page.update_taskstatus_element.when_present.click
  #  project_consultation_page.alert_error_info_element.when_present.text.should include "You must select a task."
  #end

  #consultation task list页面不选中任何task点击send sms按钮
  #it 'consultation task list page send sms without select task' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
  #  message= project_consultation_page.alert do
  #    project_consultation_page.send_sms_element.when_present.click
  #  end
  #  message.should == "You must select a task."       
  #end

  #consultation task list页面sms发送页面点击cancel
  #it 'consultation task list page send sms then click cancel btn' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.first_task_checkbox_element.when_present.click
  #  project_consultation_page.send_sms_element.when_present.click
  #  project_consultation_page.close_btn_element.when_present.click
  #end

  #consultation compliance页面compliance notes标红显示
  #it 'consultation compliance page compliance note should be red' do
  #  project_consultation_page.filter
  #  project_consultation_page.select_project_element.when_present.click
  #  project_consultation_page.attach_to_window(:title=>project_consultation_page.first_project+" - Task List - Capvision")
  #  project_consultation_page.link_to_compliance_element.when_present.click
  #  project_consultation_page.style_red_element.when_present.attribute_value("style").should eql "color: red;"
  #end
  it '创建consultation with ca client' do
    project_consultation_page.create_consultation_project_with_ca_client "China Consultation"
  end
 
  it '有TC/CA要求的项目，修改task状态not contacted->recommended,提示TC/CA不匹配' do
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    project_consultation_page.add_two_consultants
    project_consultation_page.hidden_element
    project_consultation_page.check_second_task_checkbox
    project_consultation_page.choose_task_action_element.when_present.select "Recommended"
    project_consultation_page.update_task_status_element.when_present.click
    project_consultation_page.no_match_ca_alert_element.when_present.text.should include "Ryan Test's T&C CA does not match project requirement ."
  end

  it 'consultation task页面send CA' do
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    project_consultation_page.send_ca_link_element.when_present.click
    project_consultation_page.ca_message_element.when_present.value="test ca message"
    project_consultation_page.ca_message_send_btn_element.when_present.click
  end

  it 'consultation task list页面CA发送后显示sign CA链接' do 
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    project_consultation_page.sign_ca_btn_element.when_present.exists?.should eql true
  end


  it 'consultation task页面resend ca' do 
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    project_consultation_page.resend_ca_link_element.when_present.click
    project_consultation_page.ca_message_element.when_present.value="test ca message"
    project_consultation_page.ca_message_send_btn_element.when_present.click
  end

  it 'consultation task list页面未上传文档点击sign CA链接' do 
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    message=project_consultation_page.confirm(true) do
      project_consultation_page.sign_ca_btn_element.when_present.click
    end
    message.should == "You must first upload the email file containing the CA signed by this consultant." 
  end
    
   it 'consultation task页面upload CA docx file' do 
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    project_consultation_page.upload_ca_attachment(File.expand_path(File.join('.'),'app/attachment/doc_normal.docx'))
  end

  it 'consultation task页面upload >20M pdf file' do 
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    project_consultation_page.upload_ca_attachment(File.expand_path(File.join('.'),'app/attachment/dayu20M.pdf'))
  end
  
  it 'consultation task页面upload CA exe file' do 
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    project_consultation_page.upload_ca_attachment(File.expand_path(File.join('.'),'app/attachment/EXE.exe'))
  end

  it 'consultation task list页面上传文档后点击sign CA链接' do 
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    message=project_consultation_page.confirm(true) do
      project_consultation_page.sign_ca_btn_element.when_present.click
    end
    message.should == "Have you confirmed that the consultant signed this CA?" 
  end
  
  it 'consultation task页面删除上传的document' do 
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    message=project_consultation_page.confirm(true) do
      project_consultation_page.delete_ca_attachment_element.when_present.click
    end
  end

  it 'consultation task页面直接点击approve按钮通过审批法务需求'  do
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    message= project_consultation_page.confirm(true) do
      project_consultation_page.direct_approve_btn_element.when_present.click
    end
    message.should == "Are you sure this task is approved?"
  end

  it 'consultation task页面全选所有task(前提无completed task)，删除task' do
    project_consultation_page.select_first_consultation_with_ca_client
    project_consultation_page.hidden_element
    project_consultation_page.remove_all_tasks
  end

  it 'consultation task页面task状态由recommended更改为arranged(项目有compliance要求)' do
    project_consultation_page.select_first_consultation_with_compliance
    project_consultation_page.hidden_element
    project_consultation_page.add_two_consultants
    project_consultation_page.check_first_task_checkbox
    project_consultation_page.choose_task_action_element.when_present.select "Recommended"
    project_consultation_page.update_task_status_element.when_present.click
    project_consultation_page.select_contacted_element.when_present.click
    project_consultation_page.change_status_btn_element.when_present.click
    project_consultation_page.check_first_task_checkbox
    project_consultation_page.choose_task_action_element.when_present.select "Arranged"
    project_consultation_page.update_task_status_element.when_present.click
    project_consultation_page.alert_error_info_element.when_present.text.should eql "It’s need compliance approve, so you need change it’s status to “need approval” first, then wait for compliance to approve it."
  end


  it 'consultation task页面task状态由recommended更改为need approve(项目有compliance要求)' do
    project_consultation_page.select_first_consultation_with_compliance
    project_consultation_page.hidden_element
    project_consultation_page.check_first_task_checkbox
    project_consultation_page.choose_task_action_element.when_present.select "Need Approval"
    project_consultation_page.update_task_status_element.when_present.click
  end

  it 'consultation approval页面审批need approval状态的consultation task(项目有compliance要求)' do
    project_consultation_page.direct_to_compliance_approval_page
    project_consultation_page.direct_approve_compliance
  end
  
  it 'consultation task页面task状态由need approval更改为arranged(项目有compliance要求)' do
    project_consultation_page.select_first_consultation_with_compliance
    project_consultation_page.hidden_element
    project_consultation_page.check_first_task_checkbox
    project_consultation_page.choose_task_action_element.when_present.select "Arranged"
    project_consultation_page.update_task_status_element.when_present.click
    project_consultation_page.consultation_time_element.when_present.clear
    project_consultation_page.consultation_time_element.when_present.value= "23:57"
    project_consultation_page.nick_name_element.when_present.clear
    project_consultation_page.nick_name_element.when_present.value= "cenimeiace"
    project_consultation_page.type_of_interview_element.when_present.select "Phone"
    project_consultation_page.change_status_btn_element.when_present.click

  end

  it 'consultation task页面删除所有tasks' do
    project_consultation_page.select_first_consultation_with_compliance
    project_consultation_page.hidden_element
    project_consultation_page.remove_all_tasks
  end

 


  it 'consulatation list页面更改项目状态为onhold ' do
      pending
  end


  it 'consulatation list页面更改项目状态为invalid' do
      pending
  end
  

  it 'consultation list页面更改项目状态为complete' do
    pending
  end

end