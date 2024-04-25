cd ..
echo Rendering project
quarto render
echo Render Done
cd _site
robocopy .\ "..\tvsirius.github.io" /E /IS /COPY:DAT /R:0 /W:0 /NFL /NDL
cd ..
echo Copying done
cd tvsirius.github.io
git add .
git commit -m "%*"
git push