@set VIM_CMD_FILE=%1%

@rem @echo VIM_CMD_FILE: %VIM_CMD_FILE%

@rem @gvim -i NONE -u NORC -U NONE  -c "redir > %VIM_CMD_FILE%.out" -nNesS %VIM_CMD_FILE%.vim
@rem 30.08.2015: trying --noplugin option
@gvim -i NONE -u NORC -U NONE --noplugin                            -nNesS %VIM_CMD_FILE%.vim

@type %VIM_CMD_FILE%.out
@del %VIM_CMD_FILE%.out
