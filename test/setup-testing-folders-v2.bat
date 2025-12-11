@echo off
REM MAiGPT Testing - Создание структуры папок для скриншотов (Windows)
REM Просто запусти этот файл, и вся структура создастся автоматически

setlocal enabledelayedexpansion

set ROOT_DIR=MAiGPT_Testing_Results
set TIMESTAMP=%date:~10,4%-%date:~4,2%-%date:~7,2%

cls
echo.
echo ================================================
echo   MAiGPT Testing - Setup Directory Structure
echo   Создание структуры папок для тестирования
echo ================================================
echo.

REM Проверяем, существует ли уже папка
if exist "%ROOT_DIR%" (
    echo.
    echo Внимание: Папка %ROOT_DIR% уже существует
    set /p choice="Хочешь перезаписать? (Y/N): "
    if /i "!choice!" neq "Y" (
        echo.
        echo Отмена. Ничего не создано.
        pause
        exit /b 1
    )
)

echo.
echo Создаем структуру папок для MAiGPT тестирования...
echo.

REM Основные папки
mkdir "%ROOT_DIR%" 2>nul
mkdir "%ROOT_DIR%\screenshots" 2>nul
mkdir "%ROOT_DIR%\videos" 2>nul
mkdir "%ROOT_DIR%\reports" 2>nul
mkdir "%ROOT_DIR%\logs" 2>nul

REM Подпапки для скриншотов по типам
mkdir "%ROOT_DIR%\screenshots\bugs" 2>nul
mkdir "%ROOT_DIR%\screenshots\ui-issues" 2>nul
mkdir "%ROOT_DIR%\screenshots\performance" 2>nul
mkdir "%ROOT_DIR%\screenshots\functional" 2>nul
mkdir "%ROOT_DIR%\screenshots\compatibility" 2>nul
mkdir "%ROOT_DIR%\screenshots\tariffs" 2>nul
mkdir "%ROOT_DIR%\screenshots\chat" 2>nul
mkdir "%ROOT_DIR%\screenshots\registration" 2>nul

REM Подпапки для видео
mkdir "%ROOT_DIR%\videos\bug-reproduction" 2>nul
mkdir "%ROOT_DIR%\videos\user-flows" 2>nul

REM Подпапки для отчётов
mkdir "%ROOT_DIR%\reports\bug-reports" 2>nul
mkdir "%ROOT_DIR%\reports\ux-reports" 2>nul
mkdir "%ROOT_DIR%\reports\summaries" 2>nul

REM Подпапки по платформам
mkdir "%ROOT_DIR%\screenshots\desktop" 2>nul
mkdir "%ROOT_DIR%\screenshots\mobile" 2>nul
mkdir "%ROOT_DIR%\screenshots\tablet" 2>nul

REM Подпапки по браузерам
mkdir "%ROOT_DIR%\screenshots\chrome" 2>nul
mkdir "%ROOT_DIR%\screenshots\safari" 2>nul
mkdir "%ROOT_DIR%\screenshots\edge" 2>nul
mkdir "%ROOT_DIR%\screenshots\firefox" 2>nul

REM Подпапки по модулям MAiGPT
mkdir "%ROOT_DIR%\screenshots\modules\chat" 2>nul
mkdir "%ROOT_DIR%\screenshots\modules\assistants" 2>nul
mkdir "%ROOT_DIR%\screenshots\modules\image-generation" 2>nul
mkdir "%ROOT_DIR%\screenshots\modules\video-generation" 2>nul
mkdir "%ROOT_DIR%\screenshots\modules\audio-generation" 2>nul
mkdir "%ROOT_DIR%\screenshots\modules\text-generation" 2>nul
mkdir "%ROOT_DIR%\screenshots\modules\billing" 2>nul
mkdir "%ROOT_DIR%\screenshots\modules\profile" 2>nul
mkdir "%ROOT_DIR%\screenshots\modules\referral" 2>nul

echo OK - Папки созданы!
echo.
echo Создаем README с описанием структуры...

REM Создаём README.md
(
echo # MAiGPT Testing Results
echo.
echo Структура папок для хранения результатов тестирования MAiGPT.
echo.
echo ## Структура директорий
echo.
echo MAiGPT_Testing_Results/
echo   screenshots/           - Все скриншоты
echo   ^| - bugs/             - Скриншоты багов
echo   ^| - ui-issues/        - Скриншоты UX проблем
echo   ^| - performance/      - Проблемы производительности
echo   ^| - functional/       - Функциональное тестирование
echo   ^| - modules/          - По модулям MAiGPT
echo   ^| - desktop/          - Desktop версия
echo   ^| - mobile/           - Mobile версия
echo   ^| - chrome/           - Chrome браузер
echo   ^| - safari/           - Safari браузер
echo   videos/
echo   ^| - bug-reproduction/ - Видео воспроизведения багов
echo   ^| - user-flows/       - Видео пользовательских сценариев
echo   reports/
echo   ^| - bug-reports/      - Детальные отчёты о багах
echo   ^| - ux-reports/       - Отчёты об UX проблемах
echo   ^| - summaries/        - Итоговые резюме
echo.
echo ## Правила именования файлов
echo.
echo Скриншоты: bug-001-description-2025-12-11.png
echo UX: ui-005-description-2025-12-11.png
echo Видео: bug-repro-001-description-2025-12-11.mp4
echo.
echo ## Как добавлять скриншоты
echo.
echo 1. Сделай скриншот (Win+Shift+S или Snipping Tool^)
echo 2. Назови по правилу: bug-001-register-button-2025-12-11.png
echo 3. Положи в нужную папку: screenshots/bugs/
echo 4. Обнови Excel с ссылкой на скриншот
echo.
echo ## Инструменты для скриншотов
echo.
echo - Snipping Tool (встроенный в Windows^)
echo - ShareX (бесплатный, расширенные возможности^)
echo - Greenshot (лёгкий и простой^)
echo.
echo Created: %TIMESTAMP%
) > "%ROOT_DIR%\README.md"

echo OK - README создан
echo.
echo Создаем инструкции...

REM Создаём TESTING_INSTRUCTIONS.txt
(
echo ===================================================
echo   MAiGPT TESTING INSTRUCTIONS
echo ===================================================
echo.
echo СТРУКТУРА ПАПОК
echo.
echo 1. screenshots/bugs/
echo    Скриншоты всех найденных багов
echo.
echo 2. screenshots/ui-issues/
echo    Скриншоты UX/UI проблем
echo.
echo 3. screenshots/modules/{module-name}/
echo    Скриншоты по конкретным модулям
echo.
echo 4. videos/bug-reproduction/
echo    Видео для воспроизведения багов
echo.
echo 5. reports/bug-reports/
echo    Детальные отчёты о багах
echo.
echo ПРАВИЛА ИМЕНОВАНИЯ
echo.
echo Скриншот баги:      bug-001-description-2025-12-11.png
echo Скриншот UX:        ui-005-description-2025-12-11.png
echo Скриншот функции:   func-003-description-2025-12-11.png
echo Видео баги:         bug-repro-001-description-2025-12-11.mp4
echo Отчёт дня:          daily-report-2025-12-11.md
echo.
echo ПРИМЕРЫ
echo.
echo Баг с регистрацией:
echo   bug-001-register-button-not-responsive-2025-12-11.png
echo   Файл в папке: screenshots/bugs/
echo.
echo UX проблема с тарифами:
echo   ui-005-tariffs-unclear-comparison-2025-12-11.png
echo   Файл в папке: screenshots/ui-issues/
echo.
echo РАБОЧИЙ ПРОЦЕСС
echo.
echo 1. Найти проблему в MAiGPT
echo 2. Сделать скриншот (Win+Shift+S или Snipping Tool^)
echo 3. Назвать по правилу: bug-001-description-дата.png
echo 4. Положить в нужную папку
echo 5. Заполнить Excel с описанием
echo.
echo ИНСТРУМЕНТЫ ДЛЯ СКРИНШОТОВ (Windows^)
echo.
echo - Snipping Tool (встроенный, запусти в меню Пуск^)
echo - ShareX (бесплатный, расширенные возможности^)
echo - Greenshot (лёгкий и простой^)
echo.
echo ДЛЯ ВИДЕО
echo.
echo - OBS Studio (бесплатный, мощный^)
echo - Loom (просто и с облаком^)
echo - Camtasia (платный, но удобный^)
echo.
echo ===================================================
echo Updated: %TIMESTAMP%
echo ===================================================
) > "%ROOT_DIR%\TESTING_INSTRUCTIONS.txt"

echo OK - Инструкции созданы
echo.
echo Создаем .gitignore...

REM Создаём .gitignore
(
echo # OS files
echo .DS_Store
echo .DS_Store?
echo ._*
echo .Spotlight-V100
echo .Trashes
echo ehthumbs.db
echo Thumbs.db
echo.
echo # IDE
echo .vscode/
echo .idea/
echo *.swp
echo *.swo
echo.
echo # Temporary files
echo *.tmp
echo *.bak
echo *.log
echo ~*
echo.
echo # Large files
echo *.mp4
echo *.mov
echo *.avi
echo.
echo # Design files
echo *.psd
echo *.ai
echo *.sketch
) > "%ROOT_DIR%\.gitignore"

echo OK - .gitignore создан
echo.
echo.
echo ===================================================
echo УСПЕШНО! Структура создана!
echo ===================================================
echo.
echo Созданы папки:
echo   - screenshots/bugs/          (для скриншотов багов^)
echo   - screenshots/ui-issues/     (для UX проблем^)
echo   - screenshots/modules/       (по модулям MAiGPT^)
echo   - screenshots/desktop/,mobile/,tablet/
echo   - screenshots/chrome/,safari/,edge/,firefox/
echo   - videos/bug-reproduction/   (для видео багов^)
echo   - reports/bug-reports/       (для отчётов^)
echo.
echo Созданы файлы:
echo   - README.md                  (описание структуры^)
echo   - TESTING_INSTRUCTIONS.txt   (инструкции^)
echo   - .gitignore                 (для Git^)
echo.
echo ДАЛЕЕ:
echo   1. Скачай Excel файл: MAiGPT_Testing_Analysis.xlsx
echo   2. Скачай Markdown гайд: maigpt-testing-guide.md
echo   3. Начни тестирование MAiGPT
echo   4. Сохраняй скриншоты в нужные папки
echo   5. Заполняй Excel файл с описанием проблем
echo.
echo Команда для архивирования результатов (PowerShell^):
echo   Compress-Archive -Path %ROOT_DIR% -DestinationPath MAiGPT_Testing_%TIMESTAMP%.zip
echo.
echo Или кликни правой кнопкой на папку -> Отправить -> Сжатая папка
echo.
echo ===================================================
echo.
pause
