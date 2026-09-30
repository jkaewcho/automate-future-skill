*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user login to future skill platform with ${email} ,${firstName} ,${lastName},${phoneNumber},${newPassword}and ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email            ${email}
    CommonKeywords.Wait until element is ready then input text        name=firstName        ${firstName}
    CommonKeywords.Wait until element is ready then input text        name=lastName         ${lastName}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber      ${phoneNumber}
    CommonKeywords.Wait until element is ready then input text        name=newPassword      ${newPassword}
    CommonKeywords.Wait until element is ready then input text        name=confirmpassword  ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="สมัครสมาชิก"]
future skill should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text        ${expected_message}

