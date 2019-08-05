@ECHO OFF
color 0B
mode con:cols=105 lines=32
@cls
echo.
echo.
echo.                           Ola %USERNAME%!   Computador: %COMPUTERNAME% - %DATE%
echo.
echo.     лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл 
echo.   
@echo.       *       ллллллллл     лллл     ллллллл ллл  лллл           лл     лл  ллллллллл      *      
@echo.       *       ллл   ллл    лллллл    лл      ллл ллл             лл     лл  лл     лл      *
@echo.       *       ллллллл      лл  лл    лл      ллллл               лл     лл  ллллллллл      *
@echo.       *       ллл   лл    лллллллл   лл      ллл ллл      ВВВ    лл     лл  лл             *
@echo.       *       ллл   ллл  ллл    ллл  лл      ллл  ллл            лл     лл  лл             *
@echo.       *       ллллллллл лллл    лллл ллллллл ллл  лллл           ллллллллл  лл             *
@echo. 
@echo.    лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл 
@echo.
@echo.                                                 ,,,,,,
@echo.                                             o#'9MMHb':'-,o,
@echo.                                          .oH":HH$' "' ' -*R-o,
@echo.                                         dMMM*""'`'      .oM"HM?.
@echo.                                       ,MMM'          "HLbd< ?&H\
@echo.                                      .:MH ."\          ` MM  MM&b
@echo.                                     . "*H    -        &MMMMMMMMMH:
@echo.                                    .    dboo        MMMMMMMMMMMM .
@echo.                                    .   dMMMMMMb      *MMMMMMMMMP .
@echo.                                    .    MMMMMMMP        *MMMMMP .
@echo.                                    .    `#MMMMM           MM6P ,
@echo.                                     '    `MMMP"           HM*`,
@echo.                                      '    :MM             .- ,
@echo.                                       '.   `#?..  .       ..'
@echo.                                          -.   .         .-
@echo.                                           ''-.oo,oo.-''
@echo.
@echo.                                                              
@echo off
pause
cls
echo.
echo.                                        ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
echo.                                        К # :           : # К
echo.                                        К   :           :   К
echo.                                        К   :  Backup   :   К
echo.                                        К   :           :   К
echo.                                        К   :___________:   К
echo.                                        К     _________     К
echo.                                        К    ^| __      ^|    К
echo.                                        К    ^|^|  ^|     ^|    К  
echo.                                        \____^|^|__^|_____^|____К
echo.
pause



robocopy D:\DATA_BASE  E:\DATA_BASE   /e /copy:dat /w:1 /r:1  /ZB  /LOG:d:\BACKUP_PARA_HDEXTERNO.log /xd appdata Itens* SendTo Ambien* meus* Menu* Modelo* config* cookies dados* /xf ntuser*



#ping -n 10 127.0.0.1 >NUL

#robocopy \\localhost\email$\	 \\computer\email$\%COMPUTERNAME% 	 /e /copy:dat /w:1 /r:1  /ZB

echo --------------------- %date% --------------------- >> "C:\Rotinas\rel.txt"
echo %time% Inicio >> "C:\Rotinas\rel.txt"

diskpart /s "C:\Rotinas\ativaE.txt"

msg/time:5 /w * "Aguarde 5 segundos para Inicio Backup"

robocopy  D:       "P:\NEW_BKP"        /e /copy:dat  /w:0 /r:0


attrib D:\DATA_BASE -h -r -s -a


echo %time% FIM >> "C:\Rotinas\rel.txt"


diskpart /s "C:\Rotinas\desativaE.txt"


shutdown -s -f -t 60



