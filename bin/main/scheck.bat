	@echo off
	%echoOn%
	title %checkTitle%
	if %debug%==true (goto debug1) else (cls)

:debug1
	echo %checkFirstMessage%
	if not exist "%tempDir%\%yandexStatus%" (goto checkYandex) else (goto okYandex)


:checkYandex
	>nul timeout /T 1 /NOBREAK
	if not exist "%tempDir%\%yandexStatus%" (goto checkYandex) else (goto okYandex)


:okYandex
	del "%tempDir%\%yandexStatus%"
	if not exist "%tempDir%\%chromeStatus%" (goto checkChrome) else (goto okChrome)


:checkChrome
	>nul timeout /T 1 /NOBREAK
	if not exist "%tempDir%\%chromeStatus%" (goto checkChrome) else (goto okChrome)


:okChrome
	del "%tempDir%\%chromeStatus%"
	if not exist "%tempDir%\%operaStatus%" (goto checkOpera) else (goto okOpera)


:checkOpera
	>nul timeout /T 1 /NOBREAK
	if not exist "%tempDir%\%operaStatus%" (goto checkOpera) else (goto okOpera)


:okOpera
	del "%tempDir%\%operaStatus%"
	if not exist "%tempDir%\%firefoxStatus%" (goto checkFirefox) else (goto okFirefox)


:checkFirefox
	>nul timeout /T 1 /NOBREAK
	if not exist "%tempDir%\%firefoxStatus%" (goto checkFirefox) else (goto okFirefox)


:okFirefox
	del "%tempDir%\%firefoxStatus%"
	if not exist "%tempDir%\%edgeStatus%" (goto checkEdge) else (goto okEdge)


:checkEdge
	>nul timeout /T 1 /NOBREAK
	if not exist "%tempDir%\%edgeStatus%" (goto checkEdge) else (goto okEdge)


:okEdge
	del "%tempDir%\%edgeStatus%"
	title %checkTitle%
	if %debug%==true (goto debug2) else (cls)


:debug2
	echo %checkFirstMessage%
	echo %checkLastMessage%
	%checkPause%
	exit