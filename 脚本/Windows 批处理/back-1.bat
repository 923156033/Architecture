::����һ���Զ����ݲ�ɾ������7��ı��ݽű�

@echo on
::����7z�������г���·��
set zip7=C:\Program Files\7-Zip\7z.exe
::����ѹ��������·��
set Save=F:\back
::�������ڣ������ļ���
set curdate=%date:~0,4%-%date:~5,2%-%date:~8,2%
::����Ҫ���ѹ�����ļ���
set zipfile=F:\zabbix
 
::�������� -xr!.svn����.svn�ļ���
"%zip7%" a -tzip "%Save%\%curdate%.zip" "%zipfile%" -mx0 -xr!log 
 
::ɾ������7��ı���--start--
forfiles /p "%Save%" /m *.zip -d -7 /c "cmd /c del /f @path"
::Set nowdate=%date:~,10%
::copy F:\zabbix F:\back\%nowdate:/=-%.zip
pause