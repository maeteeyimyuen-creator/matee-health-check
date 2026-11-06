@echo off
chcp 65001 >nul
echo ========================================================
echo   ระบบนำส่งเว็บไซต์ขึ้น GitHub Pages (Deploy to GitHub)
echo ========================================================
echo.
echo กรุณาสร้าง Repository บน https://github.com/new ก่อน (ตั้งเป็น Public)
echo.
set /p REPO_URL="วาง GitHub Repository URL ของคุณที่นี่ (เช่น https://github.com/user/repo.git): "

if "%REPO_URL%"=="" (
    echo ไม่ได้ระบุ URL ยกเลิกการทำงาน
    pause
    exit /b
)

echo.
echo กำลังเชื่อมต่อไปยัง %REPO_URL% ...
git remote remove origin 2>nul
git remote add origin %REPO_URL%
git branch -M main
echo กำลัง Push โค้ดขึ้น GitHub...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================================
    echo   [สำเร็จ!] อัปโหลดโค้ดขึ้น GitHub เรียบร้อยแล้ว
    echo ========================================================
    echo ขั้นตอนสุดท้ายในการเปิด GitHub Pages:
    echo 1. ไปที่ GitHub Repository ของคุณ -> แท็บ Settings
    echo 2. เมนูด้านซ้ายเลือก Pages
    echo 3. ที่หัวข้อ Build and deployment:
    echo    - Source: Deploy from a branch
    echo    - Branch: main / root
    echo 4. กด Save แล้วรอประมาณ 1 นาที จะได้ URL เว็บไซต์ทันที!
    echo ========================================================
) else (
    echo.
    echo [คำเตือน] เกิดข้อผิดพลาดในการ Push
    echo หากยังไม่ได้ Sign in ให้รัน: gh auth login หรือตรวจสอบสิทธิ์การเข้าถึง
)

echo.
pause
