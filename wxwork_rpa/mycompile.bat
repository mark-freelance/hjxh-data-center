title mycompile
nuitka --mingw64 wxwork_rpa_cli.py --standalone --static-libpython=no --follow-import-to=config --follow-import-to=custom_exception --follow-import-to=cv --follow-import-to=utils --follow-import-to=wxwork_driver --follow-import-to=wxwork_exam_detail --follow-import-to=wxwork_locator --nofollow-imports
@pause