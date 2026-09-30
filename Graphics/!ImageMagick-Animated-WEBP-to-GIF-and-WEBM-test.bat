@echo off 

REM mogrify -format gif *.webp
REM mogrify -format webm *.webp

for %%i in (*.webp) do (
	echo Converting %%i...
	mogrify -format gif %%i
	mogrify -format webm %%i
)

exit
