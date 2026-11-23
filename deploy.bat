@echo off
echo ==============================================
echo  DEPLOY KE GITHUB & VERCEL
echo ==============================================
echo Menyinkronkan file HTML...
copy /Y index.html overclocked_3d_bengkel_robot_multiplayer_co_op.html >nul

set /p msg="Masukkan pesan update (atau tekan Enter untuk default): "
if "%msg%"=="" set msg=Update game features

echo Menambahkan file ke Git...
git add .

echo Membuat commit...
git commit -m "%msg%"

echo Mendorong ke GitHub (Vercel otomatis deploy)...
git push origin main

echo ==============================================
echo  SELESAI! Update sedang/sudah live di Vercel.
echo ==============================================
pause
