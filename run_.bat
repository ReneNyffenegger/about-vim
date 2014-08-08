@set VIM_CMD_FILE=%1%

@rem @echo VIM_CMD_FILE: %VIM_CMD_FILE%

@rem @gvim -i NONE -u NORC -U NONE  -c "redir > %VIM_CMD_FILE%.out" -nNesS %VIM_CMD_FILE%.vim
@gvim -i NONE -u NORC -U NONE                                       -nNesS %VIM_CMD_FILE%.vim

@type %VIM_CMD_FILE%.out
@del %VIM_CMD_FILE%.out
