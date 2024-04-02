@echo off
:run_loop
call GUI.py
::start /wait notepad.exe config.ini

if exist "run.txt" (
	echo starting Easy-Wav2Lip...
	python run.py
	goto run_loop
	)
goto run_loop
