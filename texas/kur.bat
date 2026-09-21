@echo off
chcp 65001 > nul
echo Texas sehirleri ve alt dizinleri olusturuluyor...

set STATE=texas
:: Texas'in en cok arama hacmine sahip baslica sehirleri
set CITIES=austin dallas houston san-antonio fort-worth el-paso arlington corpus-christi plano laredo lubbock garland irving amarillo grand-prairie brownsville mckinney frisco pasadena mesquite killeen mcallen carrollton denton midland abilene beaumont odessa round-rock wichita-falls

for %%c in (%CITIES%) do (
    if not exist "%STATE%\%%c" mkdir "%STATE%\%%c"
    copy template.html "%STATE%\%%c\index.html" > nul
    echo [OK] %%c olusturuldu.
)

echo.
echo Tum Texas sehir sayfasi dizinleri basariyla olusturuldu!
pause