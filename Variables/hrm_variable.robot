*** Variables ***
${url} =    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser} =    chrome
${name} =    xpath =    //*[@name='username']
${pass} =    xpath =    //*[@name='password']
${login_btn} =    xpath =    //*[@type='submit']
${time_link} =    xpath =    //*[@href='/web/index.php/time/viewTimeModule']
${rec_link} =    xpath =    //*[@href='/web/index.php/recruitment/viewRecruitmentModule']
${net_admin} =    Network Administrator
${job_drop} =    xpath =    //*[@class='oxd-icon bi-caret-down-fill oxd-select-text--arrow']