@echo off
chcp 65001 >nul
title 🧹 CLEAR YOUR WINDOWS - ULTIMATE EDITION
color 0A

:: Verificar permisos de administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ❌ Este script necesita permisos de ADMINISTRADOR
    echo.
    echo Haz clic derecho sobre el archivo y selecciona "Ejecutar como administrador"
    pause
    exit
)

:MENU
cls
echo ════════════════════════════════════════════════════════════════
echo       🧹 CLEAR YOUR WINDOWS - ULTIMATE EDITION 🧹
echo                    ¡Para PROGRAMADORES! 💻
echo ════════════════════════════════════════════════════════════════
echo.
echo  ╔═══════════════ 🗑️  LIMPIEZA ═══════════════╗
echo  ║ [1]  Eliminar Apps Basura (Bloatware)      ║
echo  ║ [2]  Desactivar Noticias e Intereses       ║
echo  ║ [3]  Eliminar Juegos Preinstalados         ║
echo  ║ [4]  Eliminar Visor XPS                    ║
echo  ║ [5]  Eliminar Microsoft Edge (Forzado)     ║
echo  ║ [6]  Desactivar Cortana                    ║
echo  ║ [7]  Desactivar OneDrive                   ║
echo  ╚════════════════════════════════════════════╝
echo.
echo  ╔═══════════════ ⚡ OPTIMIZACIÓN ═══════════════╗
echo  ║ [8]  Desactivar Telemetría y Rastreo       ║
echo  ║ [9]  Optimizar Rendimiento (Efectos)       ║
echo  ║ [10] Limpiar Archivos Temporales           ║
echo  ║ [11] Desactivar Servicios Innecesarios     ║
echo  ║ [12] Pausar Windows Update (1 semana)      ║
echo  ║ [13] Optimizar Memoria Virtual (Paging)    ║
echo  ║ [14] Limpiar Drivers Antiguos              ║
echo  ╚════════════════════════════════════════════╝
echo.
echo  ╔═══════════════ 💻 PARA DEVS ═══════════════╗
echo  ║ [15] Mostrar Extensiones de Archivos       ║
echo  ║ [16] Instalar Git                          ║
echo  ║ [17] Instalar VS Code                      ║
echo  ║ [18] Instalar Python                       ║
echo  ║ [19] Instalar Node.js                      ║
echo  ║ [20] Configurar Fuente Cascadia Code       ║
echo  ║ [21] Habilitar WSL2                        ║
echo  ║ [22] Modo DEV Completo (15-21)             ║
echo  ╚════════════════════════════════════════════╝
echo.
echo  ╔═══════════════ 🎯 ESPECIALES ═══════════════╗
echo  ║ [23] Desactivar Publicidad Windows         ║
echo  ║ [24] Optimizar Inicio de Sesión            ║
echo  ║ [25] Desactivar Hibernación                ║
echo  ║ [26] Crear Punto de Restauración           ║
echo  ║ [27] LIMPIEZA COMPLETA (1-14)              ║
echo  ║ [28] CONFIGURACIÓN DEV COMPLETA (15-25)    ║
echo  ║ [29] SUPER ULTRA MEGA TODO (1-26) 🔥       ║
echo  ╚════════════════════════════════════════════╝
echo.
echo  [0]  ❌  Salir
echo.
echo ════════════════════════════════════════════════════════════════
set /p opcion="👉 Elige una opción (0-29): "

if "%opcion%"=="1" goto BLOATWARE
if "%opcion%"=="2" goto NOTICIAS
if "%opcion%"=="3" goto JUEGOS
if "%opcion%"=="4" goto XPS
if "%opcion%"=="5" goto EDGE
if "%opcion%"=="6" goto CORTANA
if "%opcion%"=="7" goto ONEDRIVE
if "%opcion%"=="8" goto TELEMETRIA
if "%opcion%"=="9" goto RENDIMIENTO
if "%opcion%"=="10" goto TEMPORALES
if "%opcion%"=="11" goto SERVICIOS
if "%opcion%"=="12" goto UPDATES
if "%opcion%"=="13" goto MEMORIA
if "%opcion%"=="14" goto DRIVERS
if "%opcion%"=="15" goto EXTENSIONES
if "%opcion%"=="16" goto GIT
if "%opcion%"=="17" goto VSCODE
if "%opcion%"=="18" goto PYTHON
if "%opcion%"=="19" goto NODEJS
if "%opcion%"=="20" goto CASCADIA
if "%opcion%"=="21" goto WSL
if "%opcion%"=="22" goto MODODEV
if "%opcion%"=="23" goto PUBLICIDAD
if "%opcion%"=="24" goto OPTIMIZAR_INICIO
if "%opcion%"=="25" goto HIBERNACION
if "%opcion%"=="26" goto RESTAURACION
if "%opcion%"=="27" goto COMPLETA
if "%opcion%"=="28" goto DEVSETUP
if "%opcion%"=="29" goto ULTIMATE
if "%opcion%"=="0" goto SALIR
goto MENU

:BLOATWARE
cls
echo ════════════════════════════════════════════════════════════════
echo                    🗑️ ELIMINAR BLOATWARE
echo ════════════════════════════════════════════════════════════════
echo.
echo Selecciona las apps que quieres eliminar:
echo.
echo  [1] 🌤️  El Tiempo (Bing Weather)
echo  [2] 📰  Noticias (Bing News)
echo  [3] 🗺️  Mapas
echo  [4] 📧  Correo y Calendario
echo  [5] 🎵  Groove Música
echo  [6] 🎬  Películas y TV
echo  [7] 📱  Tu Teléfono
echo  [8] 💼  Mi Office (Anuncios)
echo  [9] 🛒  Obtener ayuda
echo  [10] 🌐 WebExperience (Widgets)
echo  [11] 📷 Cámara
echo  [12] 🎤 Grabadora de Voz
echo  [13] ✅ TODAS LAS ANTERIORES
echo  [0] ⬅️  Volver
echo.
set /p bloat="👉 Elige (0-13): "

if "%bloat%"=="1" (
    echo 🔄 Eliminando El Tiempo...
    PowerShell -Command "Get-AppxPackage *bingweather* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="2" (
    echo 🔄 Eliminando Noticias...
    PowerShell -Command "Get-AppxPackage *bingnews* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="3" (
    echo 🔄 Eliminando Mapas...
    PowerShell -Command "Get-AppxPackage *windowsmaps* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="4" (
    echo 🔄 Eliminando Correo y Calendario...
    PowerShell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="5" (
    echo 🔄 Eliminando Groove Música...
    PowerShell -Command "Get-AppxPackage *zunemusic* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="6" (
    echo 🔄 Eliminando Películas y TV...
    PowerShell -Command "Get-AppxPackage *zunevideo* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="7" (
    echo 🔄 Eliminando Tu Teléfono...
    PowerShell -Command "Get-AppxPackage *yourphone* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="8" (
    echo 🔄 Eliminando Mi Office...
    PowerShell -Command "Get-AppxPackage *officehub* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="9" (
    echo 🔄 Eliminando Obtener ayuda...
    PowerShell -Command "Get-AppxPackage *gethelp* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="10" (
    echo 🔄 Eliminando WebExperience...
    PowerShell -Command "Get-AppxPackage *WebExperience* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="11" (
    echo 🔄 Eliminando Cámara...
    PowerShell -Command "Get-AppxPackage *windowscamera* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="12" (
    echo 🔄 Eliminando Grabadora de Voz...
    PowerShell -Command "Get-AppxPackage *soundrecorder* | Remove-AppxPackage" 2>nul
    echo ✅ Listo!
)
if "%bloat%"=="13" (
    echo 🔥 Eliminando TODAS las apps basura...
    PowerShell -Command "Get-AppxPackage *bingweather* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *bingnews* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *windowsmaps* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *zunemusic* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *zunevideo* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *yourphone* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *officehub* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *gethelp* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *WebExperience* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *windowscamera* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *soundrecorder* | Remove-AppxPackage" 2>nul
    echo ✅ ¡TODO eliminado!
)
if "%bloat%"=="0" goto MENU

echo.
pause
goto MENU

:NOTICIAS
cls
echo 🔄 Desactivando Noticias e Intereses...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d 2 /f >nul 2>&1
echo ✅ ¡Noticias desactivadas!
pause
goto MENU

:JUEGOS
cls
echo ════════════════════════════════════════════════════════════════
echo                    🎮 ELIMINAR JUEGOS
echo ════════════════════════════════════════════════════════════════
echo.
echo  [1] 🃏 Solitario Collection
echo  [2] 🎯 Candy Crush (si está)
echo  [3] 🎮 Xbox App
echo  [4] 🎲 TODOS los juegos
echo  [0] ⬅️  Volver
echo.
set /p game="👉 Elige (0-4): "

if "%game%"=="1" (
    echo 🔄 Eliminando Solitario...
    PowerShell -Command "Get-AppxPackage *solitairecollection* | Remove-AppxPackage" 2>nul
)
if "%game%"=="2" (
    echo 🔄 Eliminando Candy Crush...
    PowerShell -Command "Get-AppxPackage *candycrush* | Remove-AppxPackage" 2>nul
)
if "%game%"=="3" (
    echo 🔄 Eliminando Xbox App...
    PowerShell -Command "Get-AppxPackage *xboxapp* | Remove-AppxPackage" 2>nul
)
if "%game%"=="4" (
    echo 🔥 Eliminando TODOS los juegos...
    PowerShell -Command "Get-AppxPackage *solitairecollection* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *candycrush* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *king.com* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *xboxapp* | Remove-AppxPackage" 2>nul
    PowerShell -Command "Get-AppxPackage *minecraft* | Remove-AppxPackage" 2>nul
)
if "%game%"=="0" goto MENU

echo ✅ ¡Juegos eliminados!
pause
goto MENU

:XPS
cls
echo 🔄 Eliminando Visor XPS...
DISM /Online /Remove-Capability /CapabilityName:XPS.Viewer~~~~0.0.1.0 >nul 2>&1
echo ✅ ¡Visor XPS eliminado!
pause
goto MENU

:EDGE
cls
echo ════════════════════════════════════════════════════════════════
echo ⚠️  ADVERTENCIA: Eliminar Edge puede afectar algunas funciones
echo ════════════════════════════════════════════════════════════════
echo.
echo  [1] 💪 Sí, eliminar Edge (forzado)
echo  [0] 🔙 No, volver
echo.
set /p edge="👉 Elige (0-1): "

if "%edge%"=="1" (
    echo 🔄 Eliminando Microsoft Edge...
    PowerShell -Command "winget uninstall --id Microsoft.Edge --silent" 2>nul
    echo ✅ ¡Edge eliminado! Reinicia para ver cambios
)
pause
goto MENU

:CORTANA
cls
echo 🔄 Desactivando Cortana...
PowerShell -Command "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage" 2>nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f >nul 2>&1
echo ✅ ¡Cortana desactivada!
pause
goto MENU

:ONEDRIVE
cls
echo 🔄 Desactivando OneDrive...
taskkill /f /im OneDrive.exe >nul 2>&1
%SystemRoot%\System32\OneDriveSetup.exe /uninstall >nul 2>&1
%SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall >nul 2>&1
reg add "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f >nul 2>&1
echo ✅ ¡OneDrive desactivado!
pause
goto MENU

:TELEMETRIA
cls
echo 🔄 Desactivando Telemetría y Rastreo...
PowerShell -Command "Stop-Service -Name DiagTrack, dmwappushservice -Force -ErrorAction SilentlyContinue; Set-Service -Name DiagTrack, dmwappushservice -StartupType Disabled -ErrorAction SilentlyContinue" 2>nul
PowerShell -Command "Disable-ScheduledTask -TaskName 'Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser' -ErrorAction SilentlyContinue" 2>nul
PowerShell -Command "Disable-ScheduledTask -TaskName 'Microsoft\Windows\Application Experience\ProgramDataUpdater' -ErrorAction SilentlyContinue" 2>nul
PowerShell -Command "Disable-ScheduledTask -TaskName 'Microsoft\Windows\Customer Experience Improvement Program\Consolidator' -ErrorAction SilentlyContinue" 2>nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f >nul 2>&1
echo ✅ ¡Telemetría desactivada!
pause
goto MENU

:RENDIMIENTO
cls
echo 🔄 Optimizando rendimiento (Desactivando efectos visuales)...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d 9012038010000000 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d 0 /f >nul 2>&1
echo ✅ ¡Efectos visuales optimizados! Reinicia para ver cambios
pause
goto MENU

:TEMPORALES
cls
echo 🔄 Limpiando archivos temporales...
del /q /f /s %TEMP%\* >nul 2>&1
del /q /f /s C:\Windows\Temp\* >nul 2>&1
del /q /f /s C:\Windows\Prefetch\* >nul 2>&1
PowerShell -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue" 2>nul
echo ✅ ¡Archivos temporales eliminados!
pause
goto MENU

:SERVICIOS
cls
echo 🔄 Desactivando servicios innecesarios...
PowerShell -Command "Stop-Service -Name SysMain -Force -ErrorAction SilentlyContinue; Set-Service -Name SysMain -StartupType Disabled -ErrorAction SilentlyContinue" 2>nul
PowerShell -Command "Stop-Service -Name WSearch -Force -ErrorAction SilentlyContinue; Set-Service -Name WSearch -StartupType Disabled -ErrorAction SilentlyContinue" 2>nul
PowerShell -Command "Stop-Service -Name TabletInputService -Force -ErrorAction SilentlyContinue; Set-Service -Name TabletInputService -StartupType Disabled -ErrorAction SilentlyContinue" 2>nul
echo ✅ ¡Servicios optimizados!
pause
goto MENU

:UPDATES
cls
echo 🔄 Pausando Windows Update por 7 días...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseUpdatesExpiryTime" /t REG_SZ /d "2026-01-10T00:00:00Z" /f >nul 2>&1
PowerShell -Command "Stop-Service -Name wuauserv -Force -ErrorAction SilentlyContinue; Set-Service -Name wuauserv -StartupType Disabled -ErrorAction SilentlyContinue" 2>nul
echo ✅ ¡Windows Update pausado por 1 semana!
echo 💡 No olvides reactivarlo después para seguridad
pause
goto MENU

:MEMORIA
cls
echo 🔄 Optimizando Memoria Virtual...
PowerShell -Command "$ComputerSystem = Get-CimInstance -ClassName Win32_ComputerSystem; $RAM = [math]::Round($ComputerSystem.TotalPhysicalMemory / 1GB); $InitialSize = $RAM * 1024; $MaximumSize = $RAM * 1024 * 2; wmic computersystem where name='%computername%' set AutomaticManagedPagefile=False; wmic pagefileset where name='C:\\pagefile.sys' set InitialSize=$InitialSize,MaximumSize=$MaximumSize" 2>nul
echo ✅ ¡Memoria virtual optimizada!
pause
goto MENU

:DRIVERS
cls
echo 🔄 Limpiando drivers antiguos...
PowerShell -Command "pnputil /delete-driver * /uninstall /force" 2>nul
echo ✅ ¡Drivers antiguos eliminados!
pause
goto MENU

:EXTENSIONES
cls
echo 🔄 Mostrando extensiones de archivos...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d 1 /f >nul 2>&1
echo ✅ ¡Extensiones de archivos visibles!
echo 💡 Reinicia el Explorador o tu PC para verlo
pause
goto MENU

:GIT
cls
echo ════════════════════════════════════════════════════════════════
echo                    📦 INSTALANDO GIT
echo ════════════════════════════════════════════════════════════════
echo.
echo 🔄 Verificando si Git ya está instalado...
git --version >nul 2>&1
if %errorLevel% equ 0 (
    echo ✅ Git ya está instalado!
    git --version
) else (
    echo 🔄 Instalando Git usando winget...
    winget install --id Git.Git -e --source winget --silent --accept-package-agreements --accept-source-agreements
    echo ✅ ¡Git instalado! Cierra y abre de nuevo la terminal
)
pause
goto MENU

:VSCODE
cls
echo ════════════════════════════════════════════════════════════════
echo                  📝 INSTALANDO VS CODE
echo ════════════════════════════════════════════════════════════════
echo.
echo 🔄 Verificando si VS Code ya está instalado...
code --version >nul 2>&1
if %errorLevel% equ 0 (
    echo ✅ VS Code ya está instalado!
    code --version
) else (
    echo 🔄 Instalando VS Code usando winget...
    winget install --id Microsoft.VisualStudioCode -e --source winget --silent --accept-package-agreements --accept-source-agreements
    echo ✅ ¡VS Code instalado!
)
pause
goto MENU

:PYTHON
cls
echo ════════════════════════════════════════════════════════════════
echo                   🐍 INSTALANDO PYTHON
echo ════════════════════════════════════════════════════════════════
echo.
echo 🔄 Verificando si Python ya está instalado...
python --version >nul 2>&1
if %errorLevel% equ 0 (
    echo ✅ Python ya está instalado!
    python --version
) else (
    echo 🔄 Instalando Python usando winget...
    winget install --id Python.Python.3.12 -e --source winget --silent --accept-package-agreements --accept-source-agreements
    echo ✅ ¡Python instalado!
)
pause
goto MENU

:NODEJS
cls
echo ════════════════════════════════════════════════════════════════
echo                  🟢 INSTALANDO NODE.JS
echo ════════════════════════════════════════════════════════════════
echo.
echo 🔄 Verificando si Node.js ya está instalado...
node --version >nul 2>&1
if %errorLevel% equ 0 (
    echo ✅ Node.js ya está instalado!
    node --version
    npm --version
) else (
    echo 🔄 Instalando Node.js usando winget...
    winget install --id OpenJS.NodeJS -e --source winget --silent --accept-package-agreements --accept-source-agreements
    echo ✅ ¡Node.js instalado!
)
pause
goto MENU

:CASCADIA
cls
echo 🔄 Instalando fuente Cascadia Code...
winget install --id Microsoft.CascadiaCode -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul
echo 🔄 Configurando Windows Terminal con Cascadia Code...
PowerShell -Command "$settingsPath = '$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json'; if (Test-Path $settingsPath) { $settings = Get-Content $settingsPath | ConvertFrom-Json; $settings.profiles.defaults.font.face = 'Cascadia Code'; $settings | ConvertTo-Json -Depth 100 | Set-Content $settingsPath; Write-Host '✅ Terminal configurado!' } else { Write-Host '⚠️ Windows Terminal no encontrado' }" 2>nul
echo ✅ ¡Cascadia Code instalada y configurada!
pause
goto MENU

:WSL
cls
echo ════════════════════════════════════════════════════════════════
echo               🐧 INSTALANDO WSL2 (Linux en Windows)
echo ════════════════════════════════════════════════════════════════
echo.
echo ⚠️  Esto puede tardar varios minutos...
echo.
wsl --install >nul 2>&1
if %errorLevel% equ 0 (
    echo ✅ ¡WSL2 instalado!
    echo 💡 REINICIA tu PC y luego ejecuta 'wsl --install -d Ubuntu'
) else (
    echo ⚠️  WSL ya está instalado o hubo un error
    wsl --status
)
pause
goto MENU

:MODODEV
cls
echo ════════════════════════════════════════════════════════════════
echo            💻 CONFIGURACIÓN DEV COMPLETA
echo ════════════════════════════════════════════════════════════════
echo.
echo 🚀 Instalando TODO lo necesario para programar...
echo.

echo [1/7] 📁 Mostrando extensiones de archivos...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f >nul 2>&1

echo [2/7] 📦 Instalando Git...
winget install --id Git.Git -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul

echo [3/7] 📝 Instalando VS Code...
winget install --id Microsoft.VisualStudioCode -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul

echo [4/7] 🐍 Instalando Python...
winget install --id Python.Python.3.12 -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul

echo [5/7] 🟢 Instalando Node.js...
winget install --id OpenJS.NodeJS -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul

echo [6/7] 🔤 Instalando Cascadia Code...
winget install --id Microsoft.CascadiaCode -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul

echo [7/7] 🐧 Habilitando WSL2...
wsl --install >nul 2>&1

echo.
echo ✅ ¡CONFIGURACIÓN DEV COMPLETADA! 🎉
echo 💡 Cierra y abre de nuevo la terminal para usar las herramientas
pause
goto MENU

:PUBLICIDAD
cls
echo 🔄 Desactivando toda la publicidad de Windows...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 /f >nul 2>&1
echo ✅ ¡Publicidad desactivada!
pause
goto MENU

:OPTIMIZAR_INICIO
cls
echo 🔄 Optimizando inicio de sesión...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableStartupSound" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f >nul 2>&1
echo ✅ ¡Inicio optimizado!
pause
goto MENU

:HIBERNACION
cls
echo 🔄 Desactivando hibernación (libera espacio)...
powercfg /hibernate off >nul 2>&1
echo ✅ ¡Hibernación desactivada! Se liberó espacio en el disco
pause
goto MENU

:RESTAURACION
cls
echo 🔄 Creando punto de restauración...
PowerShell -Command "Checkpoint-Computer -Description 'Antes de Clear Your Windows' -RestorePointType 'MODIFY_SETTINGS'" 2>nul
echo ✅ ¡Punto de restauración creado!
pause
goto MENU

:COMPLETA
cls
echo ════════════════════════════════════════════════════════════════
echo             🔥 LIMPIEZA COMPLETA (Opciones 1-14)
echo ════════════════════════════════════════════════════════════════
echo.
echo ⚠️  Esto ejecutará TODAS las optimizaciones de limpieza
echo.
echo  [1] 💪 SÍ, hazlo TODO
echo  [0] 🔙 Volver
echo.
set /p full="👉 Elige (0-1): "

if "%full%"=="1" (
    echo.
    echo 🚀 Iniciando LIMPIEZA COMPLETA...
    echo.
    
    echo [1/14] 🗑️ Eliminando bloatware...
    PowerShell -Command "Get-AppxPackage *bingweather*, *bingnews*, *windowsmaps*, *windowscommunicationsapps*, *zunemusic*, *zunevideo*, *yourphone*, *officehub*, *gethelp*, *WebExperience*, *windowscamera*, *soundrecorder* | Remove-AppxPackage" 2>nul
    
    echo [2/14] 📰 Desactivando noticias...
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d 2 /f >nul 2>&1
    
    echo [3/14] 🎮 Eliminando juegos...
    PowerShell -Command "Get-AppxPackage *solitairecollection*, *candycrush*, *king.com*, *xboxapp*, *minecraft* | Remove-AppxPackage" 2>nul
    
    echo [4/14] 📄 Eliminando Visor XPS...
    DISM /Online /Remove-Capability /CapabilityName:XPS.Viewer~~~~0.0.1.0 >nul 2>&1
    
    echo [5/14] 🌐 Eliminando Edge...
    PowerShell -Command "winget uninstall --id Microsoft.Edge --silent" 2>nul
    
    echo [6/14] 🔍 Desactivando Cortana...
    PowerShell -Command "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage" 2>nul
    
    echo [7/14] ☁️ Desactivando OneDrive...
    taskkill /f /im OneDrive.exe >nul 2>&1
    
    echo [8/14] 📊 Desactivando telemetría...
    PowerShell -Command "Stop-Service -Name DiagTrack, dmwappushservice -Force -ErrorAction SilentlyContinue; Set-Service -Name DiagTrack, dmwappushservice -StartupType Disabled -ErrorAction SilentlyContinue" 2>nul
    
    echo [9/14] 🚀 Optimizando rendimiento...
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 2 /f >nul 2>&1
    
    echo [10/14] 🗂️ Limpiando temporales...
    del /q /f /s %TEMP%\* >nul 2>&1
    
    echo [11/14] ⚙️ Desactivando servicios...
    PowerShell -Command "Stop-Service -Name SysMain, WSearch -Force -ErrorAction SilentlyContinue; Set-Service -Name SysMain, WSearch -StartupType Disabled -ErrorAction SilentlyContinue" 2>nul
    
    echo [12/14] 🔄 Pausando Windows Update...
    PowerShell -Command "Stop-Service -Name wuauserv -Force -ErrorAction SilentlyContinue; Set-Service -Name wuauserv -StartupType Disabled -ErrorAction SilentlyContinue" 2>nul
    
    echo [13/14] 💾 Optimizando memoria virtual...
    wmic computersystem where name='%computername%' set AutomaticManagedPagefile=False >nul 2>&1
    
    echo [14/14] 🧹 Limpiando drivers...
    PowerShell -Command "pnputil /delete-driver * /uninstall /force" 2>nul
    
    echo.
    echo ✅ ¡LIMPIEZA COMPLETA TERMINADA! 🎉
    echo 🔄 Reinicia tu PC para ver todos los cambios
)
pause
goto MENU

:DEVSETUP
cls
echo ════════════════════════════════════════════════════════════════
echo        💻 CONFIGURACIÓN DEV COMPLETA (Opciones 15-25)
echo ════════════════════════════════════════════════════════════════
echo.
echo 🚀 Configurando TODO para programación profesional...
echo.

echo [1/11] 📁 Mostrando extensiones...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f >nul 2>&1

echo [2/11] 📦 Instalando Git...
winget install --id Git.Git -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul

echo [3/11] 📝 Instalando VS Code...
winget install --id Microsoft.VisualStudioCode -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul

echo [4/11] 🐍 Instalando Python...
winget install --id Python.Python.3.12 -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul

echo [5/11] 🟢 Instalando Node.js...
winget install --id OpenJS.NodeJS -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul

echo [6/11] 🔤 Instalando Cascadia Code...
winget install --id Microsoft.CascadiaCode -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul

echo [7/11] 🐧 Habilitando WSL2...
wsl --install >nul 2>&1

echo [8/11] 📢 Desactivando publicidad...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1

echo [9/11] ⚡ Optimizando inicio...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f >nul 2>&1

echo [10/11] 💤 Desactivando hibernación...
powercfg /hibernate off >nul 2>&1

echo [11/11] 🔐 Habilitando modo desarrollador...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /v "AllowDevelopmentWithoutDevLicense" /t REG_DWORD /d 1 /f >nul 2>&1

echo.
echo ✅ ¡CONFIGURACIÓN DEV COMPLETADA! 🎉💻
echo 💡 Reinicia la terminal para usar las nuevas herramientas
pause
goto MENU

:ULTIMATE
cls
echo ════════════════════════════════════════════════════════════════
echo          🔥🔥🔥 SUPER ULTRA MEGA TODO 🔥🔥🔥
echo              ¡LA TRANSFORMACIÓN COMPLETA!
echo ════════════════════════════════════════════════════════════════
echo.
echo ⚠️  ESTO HARÁ ABSOLUTAMENTE TODO:
echo   • Limpieza completa del sistema
echo   • Optimizaciones máximas
echo   • Instalación de herramientas dev
echo   • Configuraciones para programadores
echo.
echo  [1] 💪 SÍ, QUIERO EL PODER MÁXIMO
echo  [0] 🔙 No, mejor vuelvo
echo.
set /p ultimate="👉 ¿Estás listo? (0-1): "

if "%ultimate%"=="1" (
    echo.
    echo 🌟 ¡INICIANDO TRANSFORMACIÓN TOTAL! 🌟
    echo.
    
    echo ═══════════ FASE 1: LIMPIEZA ═══════════
    PowerShell -Command "Get-AppxPackage *bingweather*, *bingnews*, *windowsmaps*, *windowscommunicationsapps*, *zunemusic*, *zunevideo*, *yourphone*, *officehub*, *gethelp*, *WebExperience*, *solitairecollection*, *candycrush* | Remove-AppxPackage" 2>nul
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d 2 /f >nul 2>&1
    DISM /Online /Remove-Capability /CapabilityName:XPS.Viewer~~~~0.0.1.0 >nul 2>&1
    PowerShell -Command "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage" 2>nul
    taskkill /f /im OneDrive.exe >nul 2>&1
    
    echo ═══════════ FASE 2: OPTIMIZACIÓN ═══════════
    PowerShell -Command "Stop-Service -Name DiagTrack, dmwappushservice, SysMain, WSearch -Force -ErrorAction SilentlyContinue; Set-Service -Name DiagTrack, dmwappushservice, SysMain, WSearch -StartupType Disabled -ErrorAction SilentlyContinue" 2>nul
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 2 /f >nul 2>&1
    del /q /f /s %TEMP%\* >nul 2>&1
    powercfg /hibernate off >nul 2>&1
    
    echo ═══════════ FASE 3: HERRAMIENTAS DEV ═══════════
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f >nul 2>&1
    winget install --id Git.Git -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul
    winget install --id Microsoft.VisualStudioCode -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul
    winget install --id Python.Python.3.12 -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul
    winget install --id OpenJS.NodeJS -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul
    winget install --id Microsoft.CascadiaCode -e --source winget --silent --accept-package-agreements --accept-source-agreements 2>nul
    wsl --install >nul 2>&1
    
    echo ═══════════ FASE 4: TOQUES FINALES ═══════════
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /v "AllowDevelopmentWithoutDevLicense" /t REG_DWORD /d 1 /f >nul 2>&1
    
    echo.
    echo ✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨
    echo      ¡TRANSFORMACIÓN COMPLETA EXITOSA! 🎉🚀
    echo          Tu PC es ahora una BESTIA DEV 💻⚡
    echo ✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨
    echo.
    echo 🔄 REINICIA tu PC para disfrutar de todos los cambios
)
pause
goto MENU

:SALIR
cls
echo.
echo ════════════════════════════════════════════════════════════════
echo          ✅ ¡Gracias por usar Clear Your Windows! 
echo           Tu PC está más limpio y rápido ahora 🚀
echo              ¡Happy Coding! 💻✨
echo ════════════════════════════════════════════════════════════════
echo.
timeout /t 3 >nul
exit
