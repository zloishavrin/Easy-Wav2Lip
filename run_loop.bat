@echo off
:run_loop
echo opening config.ini - customize accordingly then save and close it to continue!
call GUI.py
::start /wait notepad.exe config.ini

if exist "run.txt" (
	echo starting Easy-Wav2Lip...
	python run.py
	goto run_loop
	)
goto run_loop
