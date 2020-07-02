*** Settings ***
Library    SeleniumLibrary 

*** Keywords ***
launch browser and invoke app
    [Documentation]    launches the cleartrip url on chrome browser
    Open Browser    https://www.cleartrip.com/    chrome
    Maximize Browser Window
    
perform serach flights
    [Documentation]    perform search flight funtcionality
    select roundtrip
    select oneway
    enter fromloc
    enter toloc
    select date
    select adults
    submit
 
select roundtrip
    [Documentation]    select round trip
    Click Element    //input[@id='RoundTrip']    
    sleep    5
    
select oneway
    Click Element    //input[@id='OneWay']
enter fromloc
    Input Text    //input[@id='FromTag']    Hyderabad, IN - Rajiv Gandhi International (HYD)  
    
enter toloc
    Input Text    //input[@id='ToTag']    Bangalore, IN - Kempegowda International Airport (BLR)  
    
select date
    Click Element    //div[contains(@class,'searchForm clearFix')]//div[1]//dl[1]//dd[1]//div[1]//a[1]//i[1]
    Click Element    //div[contains(@class,'monthBlock first')]//a[contains(@class,'ui-state-default')][contains(text(),'30')]
    
select adults
    Select From List By Index    //select[@id='Adults']    3
    
submit   
    Click Element    //input[@id='SearchBtn']
      
    
kill browser
    Close Browser

*** Test Cases ***
sample testcase 01
    launch browser and invoke app
    perform serach flights
    kill browser
    
                   
    
