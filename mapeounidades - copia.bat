@echo off
title Mapeo de unidades


:Menu
 cls
 set opcion=
  
 echo Elige una opcion...
 echo.
 echo 1 - NGL\T009464
 echo 2 - NGL\T009465
 echo 3 - Salir
 
 set /p opcion=
  
 if (%opcion%) == (1) goto Re1
 if (%opcion%) == (2) goto Re2
 if (%opcion%) == (3) goto salir
 
 echo.
 echo. Opcion incorrecta
 echo.
 pause
 goto Menu

 
:Re1
 net use %1: \\%2\%3$ ThaolgKq/7dPlzJ019EY /user:NGL\T009464 /persistent:yes
 pause
 net use /delete %1:
 goto Menu
  
:Re2
 net use %1: \\%2\%3$ AaKHnkRcWXkw4e0GrRKD /user:NGL\T009465 /persistent:yes
 pause
 net use /delete %1:
 goto Menu
 
:Salir
 exit
 






