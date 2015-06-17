:: Automatically launch VirtualBox OS X 10.10 Yosemite virtual machine
:: with specified resolution.
:: Note: May only work on specific version
:: https://www.youtube.com/watch?v=orrNHlgb-2Y

:: Author: Christopher Markieta

SET INSTALL_DIR=C:\Program Files\Oracle\VirtualBox
SET     VM_NAME="OS X 10.10 Yosemite"

       IF "%1" ==  "480p" ( ::  640x480
    SET N=0
) ELSE IF "%1" ==  "600p" ( ::  800x600
    SET N=1
) ELSE IF "%1" ==  "768P" ( :: 1024x768
    SET N=2
) ELSE IF "%1" == "1024p" ( :: 1280x1024
    SET N=3
) ELSE IF "%1" ==  "900p" ( :: 1440x900
    SET N=4
) ELSE (                    :: 1900x1200
    SET N=5
)

%INSTALL_DIR%\VBoxManage setextradata %VM_NAME% VBoxInternal2/EfiGopMode %N%
%INSTALL_DIR%\VBoxManage startvm      %VM_NAME%