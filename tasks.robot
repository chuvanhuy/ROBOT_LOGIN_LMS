*** Settings ***
Documentation       Robot Login LMS

Library             RPA.Browser.Selenium    auto_close=${FALSE}
Library             RPA.HTTP


*** Variables ***
${WEB_ADDRESS}      https://school.moodledemo.net


*** Tasks ***
Robot Login LMS
    Mở trình duyệt & Website
    Đăng nhập
    # [Teardown]    Thoát và đóng trình duyệt


*** Keywords ***
Mở trình duyệt & Website
    Open Available Browser    ${WEB_ADDRESS}/login/index.php

Đăng nhập
    Input Text    username    teacher
    Input Password    password    moodle
    Submit Form

# Thoát và đóng trình duyệt
    # Click Element    ${WEB_ADDRESS}/login/logout.php
    # Close Browser
