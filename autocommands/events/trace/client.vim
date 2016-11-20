fu Out(txt) " {
   call remote_send('tq84', a:txt . nr2char(10))

   call remote_send('tq84', nr2char(27) . ':set nomodified' . nr2char(10) . 'i')
endfu " }

fu Event(eventName) " {
   call Out('Event ' . a:eventName)
endfu " }

fu SetAutocommand(eventName) " {

   if a:eventName =~ 'Cmd$'
      return
   endif

   let l:cmd = 'autocmd ' . a:eventName . ' * call Event("' . a:eventName . '")'
   call Out(l:cmd)

   execute l:cmd
 endfu " }

call remote_send('tq84', 'i')

" set verbose=9

" Reading 
  call SetAutocommand('BufNewFile'           )
  call SetAutocommand('BufReadPre'           )
  call SetAutocommand('BufRead'              )
  call SetAutocommand('BufReadPost'          )
  call SetAutocommand('BufReadCmd'           )

  call SetAutocommand('FileReadPre'          )
  call SetAutocommand('FileReadPost'         )
  call SetAutocommand('FileReadCmd'          )

  call SetAutocommand('FilterReadPre'        )
  call SetAutocommand('FilterReadPost'       )

  call SetAutocommand('StdinReadPre'         )
  call SetAutocommand('StdinReadPost'        )

" Writing
  call SetAutocommand('BufWrite'             )
  call SetAutocommand('BufWritePre'          )
  call SetAutocommand('BufWritePost'         )
  call SetAutocommand('BufWriteCmd'          )

  call SetAutocommand('FileWritePre'         )
  call SetAutocommand('FileWritePost'        )
  call SetAutocommand('FileWriteCmd'         )

  call SetAutocommand('FileAppendPre'        )
  call SetAutocommand('FileAppendPost'       )
  call SetAutocommand('FileAppendCmd'        )

  call SetAutocommand('FilterWritePre'       )
  call SetAutocommand('FilterWritePost'      )

" Buffers
  call SetAutocommand('BufAdd'               )
  call SetAutocommand('BufCreate'            )
  call SetAutocommand('BufDelete'            )
  call SetAutocommand('BufWipeout'           )

  call SetAutocommand('BufFilePre'           )
  call SetAutocommand('BufFilePost'          )

  call SetAutocommand('BufEnter'             )
  call SetAutocommand('BufLeave'             )
  call SetAutocommand('BufWinEnter'          )
  call SetAutocommand('BufWinLeave'          )

  call SetAutocommand('BufUnload'            )
  call SetAutocommand('BufHidden'            )
  call SetAutocommand('BufNew'               )

  call SetAutocommand('SwapExists'           )

" Options
  call SetAutocommand('FileType'             )
  call SetAutocommand('Syntax'               )
  call SetAutocommand('EncodingChanged'      )
  call SetAutocommand('TermChanged'          )

" Startup and exit
  call SetAutocommand('VimEnter'             )
  call SetAutocommand('GUIEnter'             )
  call SetAutocommand('GUIFailed'            )
  call SetAutocommand('TermResponse'         )

  call SetAutocommand('QuitPre'              )
  call SetAutocommand('VimLeavePre'          )
  call SetAutocommand('VimLeave'             )

" Various
  call SetAutocommand('FileChangedShell'     )
  call SetAutocommand('FileChangedShellPost' )
  call SetAutocommand('FileChangedRO'        )

  call SetAutocommand('ShellCmdPost'         )
  call SetAutocommand('ShellFilterPost'      )

  call SetAutocommand('FuncUndefined'        )
  call SetAutocommand('SpellFileMissing'     )
  call SetAutocommand('SourcePre'            )
  call SetAutocommand('SourceCmd'            )

  call SetAutocommand('VimResized'           )
  call SetAutocommand('FocusGained'          )
  call SetAutocommand('FocusLost'            )
  call SetAutocommand('CursorHold'           )
  call SetAutocommand('CursorHoldI'          )
  call SetAutocommand('CursorMoved'          )
  call SetAutocommand('CursorMovedI'         )

  call SetAutocommand('WinEnter'             )
  call SetAutocommand('WinLeave'             )
  call SetAutocommand('TabEnter'             )
  call SetAutocommand('TabLeave'             )
  call SetAutocommand('CmdwinEnter'          )
  call SetAutocommand('CmdwinLeave'          )

  call SetAutocommand('InsertEnter'          )
  call SetAutocommand('InsertChange'         )
  call SetAutocommand('InsertLeave'          )
  call SetAutocommand('InsertCharPre'        )

  call SetAutocommand('ColorScheme'          )

" call SetAutocommand('RemoteReply'          )

  call SetAutocommand('QuickFixCmdPre'       )
  call SetAutocommand('QuickFixCmdPost'      )

  call SetAutocommand('SessionLoadPost'      )

  call SetAutocommand('MenuPopup'            )
  call SetAutocommand('CompleteDone'         )

  call SetAutocommand('User'                 )
