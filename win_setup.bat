pushd .
cd %USERPROFILE%

:: CLEAN UP OLD .vimrc or _vimrc
if not exist vimrc_backup mkdir vimrc_backup
if exist _vimrc (
	cp --backup=t _vimrc vimrc_backup/
	del _vimrc
)
if exist .vimrc (
	cp --backup=t .vimrc vimrc_backup/
	del .vimrc
)

:: Create sym link to the vimrc under source control
mklink %USERPROFILE%\_vimrc %USERPROFILE%\vimfiles\vimrc

:: Make sure the vim_backup file exists
if not exist %USERPROFILE%\vim_backup mkdir %USERPROFILE%\vim_backup

popd

