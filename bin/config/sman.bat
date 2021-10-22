	@echo off
	>nul chcp 65001
	if "%1%"=="" (goto forgot)
	if not defined %1% (goto undef)
	goto %1%


:undef
	echo Не удаётся найти информацию для переменной "%1%".
	goto end





:forgot
	echo Вы не ввели имя переменной.
	goto end





:echoOn
	echo echoOn=%echoOn%
	echo Печать в cmd вводимых команд.
	echo 	Допустимые значения:
	echo 		echo on  - включить
	echo 		echo off - выключить
	echo 		""       - (пустое значение) по-умолчанию
	goto ends




:mode	
	echo mode=%mode	%
	echo Тип копиравания.
	echo 	Допустимые значения:
	echo 		all  - все данные браузера
	echo 		user - все данные пользователя
	echo 		pass - только пароли и кукки
	goto ends




:test
	echo test=%test%
	echo Режим тестового запуска.
	echo 	Допустимые значения:
	echo 		true - запуск в тестовом режиме, 
	echo 		       не копирует данные (создаёт пустые папки).
	echo 		В остальных случаях производит копирование.
	goto ends





:check
	echo check=%check%
	echo Оповещение об окончании.
	echo 	Допустимые значения:
	echo 		true - в консоль будет выведенно
	echo 		       сообщение по окончании.
	echo 		В остальных случаях проверка не производится.
	goto ends




:debug
	echo debug=%debug%
	echo Дебаг мод.
	echo 	Допустимые значения:
	echo 		true - будет включён режим отладки
	echo 		В остальных случаях стандартный режим.
	goto ends




:taskPriority
	echo taskPriority=%taskPriority%
	echo Приоритет создаваемых задач.
	echo 	Допустимые значения:
	echo 		/realtime    - реального времени
	echo 		/high        - высокий
	echo 		/normal      - нормальный
	echo 		/low         - низкий
	echo 		/abovenormal - выше среднего
	echo 		/belownormal - ниже среднего
	goto ends




:taskCm
	echo taskCm=%taskCm%
	echo Открыти окна cmd для задач.
	echo 	Допустимые значения:
	echo 		/b   - не открывать
	echo 		/max - открывать в развёрнутом виде
	echo 		/min - открывать в свёрнутом виде
	echo 		""   - (пустое значение) по-умолчанию
	goto ends




:taskMessage
	echo taskMessage=%taskMessage%
	echo Сообщения от создаваемой задачи.
	echo 	Допустимые значения:
	echo 		>nul - отключить
	echo 		""   - (пустое значение) по-умолчанию
	goto ends




:pause
	echo pause=%pause%
	echo Закрытие окна по завершении.
	echo 	Допустимые значения:
	echo 		pause - не закрывать
	echo 		""    - (пустое значение) закрыть
	goto ends




:mtLevel
	echo mtLevel=%mtLevel%
	echo Уровень параллелизма при копировании.
	echo 	Допустимые значения:
	echo 		целое_число - кол-во потоков копирования
	echo 		              по-умолчанию 8	
	goto ends




:robocopyCmd
	echo robocopyCmd=%robocopyCmd%
	echo Открыти окна cmd копирования.
	echo 	Допустимые значения:
	echo 		/b   - не открывать
	echo 		/max - открывать в развёрнутом виде
	echo 		/min - открывать в свёрнутом виде
	echo		""   - (пустое значение) по-умолчанию
	goto ends




:robocopyDisplay
	echo robocopyDisplay=%robocopyDisplay%
	echo Вывод информации при копированиия.
	echo 	Допустимые значения:
	echo 		>nul - вывод отключён
	echo 		""   - (пустое значение) вывод включён
	goto ends




:robocopyDisplayLevel
	echo robocopyDisplayLevel=%robocopyDisplayLevel%
	echo Уровень вывода информации при копировании.
	echo 	Допустимые значения:
	echo 		/np  - без хода процесса (не отображать число 
	echo 		       скопированных %)
	echo 		/njh - без заголовка задания
	echo 		/njs - без сведений о задании
	goto ends




:robocopyPause
	echo robocopyPause=%robocopyPause%
	echo Закрытие окна по завершении.
	echo 	Допустимые значения:
	echo 		pause - не закрывать
	echo 		""    - (пустое значение) закрыть
	goto ends




:checkTitle
	echo checkTitle=%checkTitle%
	echo Название окна cmd с информацией о статусе (при использовании check).
	goto ends




:checkFirstMessage
	echo checkFirstMessage=%checkFirstMessage%
	echo Затравачное сообщение (при использовании check).
	goto ends




:checkLastMessage
	echo checkLastMessage=%checkLastMessage%
	echo Завершающее сообщение (при использовании check).
	goto ends




:checkPause
	echo checkPause=%checkPause%
	echo Ожидание (при использовании check).
	echo 	Допустимые значения:
	echo 		pause - ожидать действия пользователя
	echo 		""    - (пустое значение) закрывать cmd сразу 
	echo 		        после завершения проверки
	goto ends




:curDate
	echo curDate=%curDate%
	echo Текущая дата.
	echo Инициализируется при запуске. Для обновления используйте sinit.
	echo Используется при создании каталогов для загружаемых данных.
	goto ends




:curTime
	echo curTime=%curTime%
	echo Текущее время.
	echo Инициализируется при запуске. Для обновления используйте sinit.
	echo Используется при создании каталогов для загружаемых данных.
	goto ends




:baseDir
	echo baseDir=%baseDir%
	echo Базовая директория.
	goto ends




:mainDir
	echo mainDir=%mainDir%
	echo Директория с исполняймыми файлами инициирующими процесс загрузки.
	goto ends




:confDir
	echo confDir=%confDir%
	echo Директория с файлами конфигурации и подпрограммами для настройки.
	goto ends




:copyDir
	echo copyDir=%copyDir%
	echo Директория с исполняемыми файлами выполняющими загрузку.
	goto ends




:tempDir
	echo tempDir=%tempDir%
	echo Директория с временными файлами.
	goto ends




:dataDir
	echo dataDir=%dataDir%
	echo Директория для загружаемых файлов.
	goto ends




:downloadDir
	echo downloadDir=%downloadDir%
	echo Директория в которую загружаются файлы в данной сессии.
	goto ends




:yandexDataDir
	echo yandexDataDir=%yandexDataDir%
	echo Директория в которую копируются данные из Yandex Browser в данной сессии.
	goto ends




:chromeDataDir
	echo chromeDataDir=%chromeDataDir%
	echo Директория в которую копируются данные из Google Chrome в данной сессии.
	goto ends




:operaDataDir
	echo operaDataDir=%operaDataDir%
	echo Директория в которую копируются данные из Opera в данной сессии.
	goto ends




:firefoxDataDir
	echo firefoxDataDir=%firefoxDataDir%
	echo Директория в которую копируются данные из Mozilla Firefox в данной сессии.
	goto ends




:edgeDataDir
	echo edgeDataDir=%edgeDataDir%
	echo Директория в которую копируются данные из Edge в данной сессии.
	goto ends




:yandexStatus
	echo yandexStatus=%yandexStatus%
	echo Название файла в который записывается статус копирования из Yandex Browser.
	goto ends




:chromeStatus
	echo chromeStatus=%chromeStatus%
	echo Название файла в который записывается статус копирования из Google Chrome.
	goto ends




:operaStatus
	echo operaStatus=%operaStatus%
	echo Название файла в который записывается статус копирования из Opera.
	goto ends



:firefoxStatus
	echo firefoxStatus=%firefoxStatus%
	echo Название файла в который записывается статус копирования из Mozilla Firefox.
	goto ends




:edgeStatus
	echo edgeStatus=%edgeStatus%
	echo Название файла в который записывается статус копирования из Edge.
	goto ends




:emtyFolder
	echo emtyFolder=%emtyFolder%
	echo Название папки создаваемой при режиме тестирования или в случае пока нереализованых функций.
	goto ends




:yandexLocal
	echo yandexLocal=%yandexLocal%
	echo Расположение Yandex Browser в local.
	goto ends




:chromeLocal
	echo chromeLocal=%chromeLocal%
	echo Расположение Google Chrome в local.
	goto ends




:operaLocal
	echo operaLocal=%operaLocal%
	echo Расположение Opera в local.
	goto ends




:firefoxLocal
	echo firefoxLocal=%firefoxLocal%
	echo Расположение Mozilla Firefox в local.
	goto ends




:edgeLocal
	echo edgeLocal=%edgeLocal%
	echo Расположение Edge в local.
	goto ends




:yandexLocalUser
	echo yandexLocalUser=%yandexLocalUser%
	echo Расположение пользовательских данных Yandex Browser в local.
	goto ends




:chromeLocalUser
	echo chromeLocalUser=%chromeLocalUser%
	echo Расположение пользовательских данных Google Chrome в local.
	goto ends




:operaLocalUser
	echo operaLocalUser=%operaLocalUser%
	echo Расположение пользовательских данных Opera в local.
	goto ends




:firefoxLocalUser
	echo firefoxLocalUser=%firefoxLocalUser%
	echo Расположение пользовательских данных Mozilla Firefox в local.
	goto ends




:edgeLocalUser
	echo edgeLocalUser=%edgeLocalUser%
	echo Расположение пользовательских данных Edge в local.
	goto ends




:yandexLocalPass
	echo yandexLocalPass=%yandexLocalPass%
	echo Расположение паролей и кукки Yandex Browser в local.
	goto ends




:chromeLocalPass
	echo chromeLocalPass=%chromeLocalPass%
	echo Расположение паролей и кукки Google Chrome в local.
	goto ends




:operaLocalPass
	echo operaLocalPass=%operaLocalPass%
	echo Расположение паролей и кукки Opera в local.
	goto ends




:firefoxLocalPass
	echo firefoxLocalPass=%firefoxLocalPass%
	echo Расположение паролей и кукки Mozilla Firefox в local.
	goto ends




:edgeLocalPass
	echo edgeLocalPass=%edgeLocalPass%
	echo Расположение паролей и кукки Edge в local.
	goto ends




:yandexRoaming
	echo yandexRoaming=%yandexRoaming%
	echo Расположение пользовательских данных Yandex Browser в roaming.
	goto ends




:chromeRoaming
	echo chromeRoaming=%chromeRoaming%
	echo Расположение пользовательских данных Google Chrome в roaming.
	goto ends




:operaRoaming
	echo operaRoaming=%operaRoaming%
	echo Расположение пользовательских данных Opera в roaming.
	goto ends




:firefoxRoaming
	echo firefoxRoaming=%firefoxRoaming%
	echo Расположение пользовательских данных Mozilla Firefox в roaming.
	goto ends




:edgeRoaming
	echo edgeRoaming=%edgeRoaming%
	echo Расположение пользовательских данных Edge в roaming.
	goto ends




:yandexRoamingUser
	echo yandexRoamingUser=%yandexRoamingUser%
	echo Расположение пользовательских данных Yandex Browser в roaming.
	goto ends




:chromeRoamingUser
	echo chromeRoamingUser=%chromeRoamingUser%
	echo Расположение пользовательских данных Google Chrome в roaming.
	goto ends




:operaRoamingUser
	echo operaRoamingUser=%operaRoamingUser%
	echo Расположение пользовательских данных Opera в roaming.
	goto ends



:firefoxRoamingUser
	echo firefoxRoamingUser=%firefoxRoamingUser%
	echo Расположение пользовательских данных Mozilla Firefox в roaming.
	goto ends




:edgeRoamingUser
	echo edgeRoamingUser=%edgeRoamingUser%
	echo Расположение пользовательских данных Edge в roaming.
	goto ends




:yandexRoamingPass
	echo yandexRoamingPass=%yandexRoamingPass%
	echo Расположение паролей и кукки Yandex Browser в roaming.
	goto ends




:chromeRoamingPass
	echo chromeRoamingPass=%chromeRoamingPass%
	echo Расположение паролей и кукки Google Chrome в roaming.
	goto ends




:operaRoamingPass
	echo operaRoamingPass=%operaRoamingPass%
	echo Расположение паролей и кукки Opera в roaming.
	goto ends




:firefoxRoamingPass
	echo firefoxRoamingPass=%firefoxRoamingPass%
	echo Расположение паролей и кукки Mozilla Firefox в roaming.
	goto ends




:edgeRoamingPass
	echo edgeRoamingPass=%edgeRoamingPass%
	echo Расположение паролей и кукки Edge в roaming.
	goto ends






:ends
	echo Для изменения значения переменной используйте - set "[имя переменной]=[значение]".
	echo Это изменит значение только в текущем сеансе, для глобального изменения используйте ssetup. 





:end

