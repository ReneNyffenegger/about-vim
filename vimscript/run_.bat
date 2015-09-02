@set VIM_CMD_FILE=%1%

@rem @echo VIM_CMD_FILE: %VIM_CMD_FILE%

@rem @gvim -i NONE -u NORC -U NONE  -c "redir > %VIM_CMD_FILE%.out" -nNesS %VIM_CMD_FILE%.vim
@rem 30.08.2015: trying --noplugin option
@rem 02.09.2015: It seems that «-u NONE» would have had the same effect...
@gvim -i NONE -u NORC -U NONE --noplugin                            -nNesS %VIM_CMD_FILE%.vim
@rem 
@rem Command line options:
@rem   -n: Don't create swap file
@rem   -N: Not compatible mode (used because of -u NORC)
@rem   -e: start Vim in Ex mode
@rem   -s: silent or batch mode (together with -e)
@rem   -S: Source file stated.

@type %VIM_CMD_FILE%.out
@del %VIM_CMD_FILE%.out
