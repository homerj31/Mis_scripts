@echo off
title Mapeo de unidades


:Menu
 cls
 set opcion=
  
 echo Elige una opcion...
 echo.
 echo 1 - Conectar user T009464
 echo 2 - Conectar user T009465
 echo 3 - Listar conexiones
 echo 4 - Desconectar
 echo 5 - Salir
 
 set /p opcion=
  
 if (%opcion%) == (1) goto ConectarUser1
 if (%opcion%) == (2) goto ConectarUser2
 if (%opcion%) == (3) goto Listar_conexiones
 if (%opcion%) == (4) goto Desconectar
 if (%opcion%) == (5) goto Salir
 
 echo.
 echo. Opcion incorrecta
 echo.
 pause
 goto Menu
 
:ConectarUser1
 echo unidadlocal
 set /p unidadlocal=
 echo maquina
 set /p maquina=
 echo unidadremota
 set /p unidadremota=
 net use %unidadlocal%: \\%maquina%\%unidadremota%$ ThaolgKq/7dPlzJ019EY /user:NGL\T009464 /persistent:yes
 pause
 goto Menu
  
:ConectarUser2
 echo unidadlocal
 set /p unidadlocal=
 echo maquina
 set /p maquina=
 echo unidadremota
 set /p unidadremota=
 net use %unidadlocal%: \\%maquina%\%unidadremota%$ AaKHnkRcWXkw4e0GrRKD /user:NGL\T009465 /persistent:yes
 pause
 goto Menu
 
:Desconectar
 echo unidadAborrar
 set /p unidadAborrar=
 net use /delete %unidadAborrar%:
 pause
 goto Menu
 
:Listar_conexiones
 net use
 pause
 goto menu

 
:Salir
 exit
 






