*** Settings ***
Resource             ../../Data/InputData.robot
Library    AppiumLibrary


*** Variables ***

*** Keywords ***

Wait for Element and then Click
    [Arguments]    ${locator}    ${timeout}=30s
    Wait Until Element Is Visible    ${locator}     ${timeout}
    Click Element   ${locator}


Click Add Post 
    Wait for Element and then Click     ${ADD_POST_BUTTON}  

Add post
    [Arguments]    ${POST_TEXT}  
    Input Text    ${POST_SPACE}        ${POST_TEXT}

Add Post details 
        Wait for Element and then Click    ${POST_SPACE}
        Add post    ${POST_TEXT}
  

Click Post
    Click Element    ${POST_BUTTON}


