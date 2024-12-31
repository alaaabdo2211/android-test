*** Settings ***

Library    AppiumLibrary



*** Variables ***

*** Keywords ***

Open an application 
    Open Application    ${APPIUM_URL}    platformName=${PLATFORM}    deviceName=${DEVICE_NAME}    appPackage=${LINKEDIN_APPLICATION_ID}    appActivity=${LINKEDIN_APPLICATION_ACTIVITY}
