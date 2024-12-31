*** Settings ***
Resource             ../Data/InputData.robot
Resource            ../Resources/PO/LoginScreen.robot
Resource            ../Resources/PO/Registration.robot
Resource            ../Resources/OpenApplicationScreen.robot
Resource            ../Resources/PO/Logout.robot
Resource            ../Resources/PO/AddPost.robot

*** Test Cases ***

# Should open the Application
#     OpenApplicationScreen.Open an application 
Should be able to sign in 
    OpenApplicationScreen.Open an application
    LoginScreen.Verify Page Loaded
    LoginScreen.Login With Valid Credentials
    LoginScreen.Click "Login" Button
    LoginScreen.Verfiy Next Page


Should be able to sign up
    OpenApplicationScreen.Open an application
    Registration.Verify Page Loaded
    Registration.Enter First name and Last name
    Registration.Enter email address
    Registration.Enter password
    Registration.Click "Sign up" Button

# Should be able to sign out 
#     Logout.Go to profile
#     Logout.Go to Settings
#     Logout.Signout

Should be able to add post 
    OpenApplicationScreen.Open an application
    LoginScreen.Verify Page Loaded
    LoginScreen.Login With Valid Credentials
    LoginScreen.Click "Login" Button
    LoginScreen.Verfiy Next Page
    AddPost.Click Add Post
    AddPost.Add Post details 
    AddPost.Click Post
