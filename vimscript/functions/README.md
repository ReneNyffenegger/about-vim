This directory contains simple vim scripts to demonstrate built-in vim script functions.

On `cmd.exe`, they can be started for example with `..\run_.bat echo` (or `run_ echo`). Note the omitted
suffix `.vim`.

## Index

<table>

  
  <tr><td colspan="2"><b>String manipulation</b></td></tr>

    <tr><td>nr2char()    </td><td>get a character by its ASCII value</td></tr>
    <tr><td>char2nr()    </td><td>get ASCII value of a character</td></tr>
    <tr><td>str2nr()    </td><td>convert a string to a Number</td></tr>
    <tr><td>str2float()    </td><td>convert a string to a Float</td></tr>
    <tr><td>printf()    </td><td>format a string according to % items</td></tr>
    <tr><td>escape()    </td><td>escape characters in a string with a '\'</td></tr>
    <tr><td>shellescape()    </td><td>escape a string for use with a shell command</td></tr>
    <tr><td>fnameescape()    </td><td>escape a file name for use with a Vim command</td></tr>
    <tr><td>tr()            </td><td>translate characters from one set to another</td></tr>
    <tr><td>strtrans()      </td><td>translate a string to make it printable</td></tr>
    <tr><td>tolower()       </td><td>turn a string to lowercase</td></tr>
    <tr><td>toupper()       </td><td>turn a string to uppercase</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/match.vim">match()</a>         </td><td>position where a pattern matches in a string</td></tr>
    <tr><td>matchend()      </td><td>position where a pattern match ends in a string</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/matchstr.vim">matchstr()</a>         </td><td>Same as match, but return matched string</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/matchlist.vim">matchlist</a>()     </td><td>like matchstr() and also return submatches</td></tr>
    <tr><td>stridx()        </td><td>first index of a short string in a long string</td></tr>
    <tr><td>strridx()       </td><td>last index of a short string in a long string</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/strlen.vim">strlen()</a>       </td><td>length of a string</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/substitute.vim">substitute()</a>   </td><td>substitute a pattern match with a string</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/submatch.vim">submatch()      </td><td>get a specific match in a ":substitute"</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/strpart.vim">strpart()</a>       </td><td>get part of a string</td></tr>
    <tr><td>expand()        </td><td>expand special keywords</td><td>S.a. <code>fnamemodify()</code></td></tr>
    <tr><td>iconv()         </td><td>convert text from one encoding to another</td></tr>
    <tr><td>byteidx()       </td><td>byte index of a character in a string</td></tr>
    <tr><td>repeat()        </td><td>repeat a string (or a list) multiple times</td></tr>
    <tr><td>eval()          </td><td>evaluate a string expression</td></tr>

  <tr><td colspan="2"><b>List manipulation</b></td></tr>
    <tr><td>insert()   </td><td>insert an item somewhere in a List</td></tr>
    <tr><td>add()      </td><td>append an item to a List</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/sort.vim">sort()</a>     </td><td>sort a List</td></tr>
    <tr><td>reverse()  </td><td>reverse the order of a List</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/split.vim">split()</a>    </td><td>split a String into a List</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/join.vim">join()</a>     </td><td>join List items into a String</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/range.vim">range()</a>    </td><td>return a List with a sequence of numbers</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/call.vim">call()     </td><td>call a function with list as arguments</td></tr>
    <tr><td>index()    </td><td>index of a value in a List</td></tr>

  <tr><td colspan="2"><b>Dictionary manipulation</b></td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/has_key.vim">has_key()</a>  </td><td>check whether a key appears in a Dictionary</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/keys.vim">keys()</a>     </td><td>get List of Dictionary keys</td></tr>
    <tr><td>values()   </td><td>get List of Dictionary values</td></tr>
    <tr><td>items()    </td><td>get List of Dictionary key-value pairs</td></tr>

  <tr><td colspan="2"><b>List and dictionary manipulation</b></td></tr>
    <tr><td>copy()     </td><td>make a shallow copy of a list or deictionary</td><td>S.a. <a href="https://github.com/ReneNyffenegger/about-vim/blob/master/vimscript/arrays-and-hashes/arrays_by_reference_or_by_value.vim">arrays_by_reference_or_by_value.vim</a>, deepcopy()</td></tr>
    <tr><td>count()    </td><td>count number of times a value appears in a list or a dictionary</td></tr>
    <tr><td>deepcopy() </td><td>make a full copy of a list or a dictionary</td><td>S.a. copy()</td></tr>
    <tr><td>empty()    </td><td>check if list or dictionary is empty</td></tr>
    <tr><td>extend()   </td><td>add entries from one list or dictionary to another</td></tr>
    <tr><td>filter()   </td><td>remove selected entries from a list or dictionary</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/get.vim">get()</a>      </td><td>get entry of list or dictionary without an error for a wrong index or key</td></tr>
    <tr><td>len()      </td><td>number of entries in a list or dictionary</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/map.vim">map()</a>      </td><td>change each list or dictionary entry</td></tr>
    <tr><td>max()      </td><td>maximum value in a list or dictionary</td></tr>
    <tr><td>min()      </td><td>minimum value in a list or dictionary</td></tr>
    <tr><td>remove()   </td><td>remove an entry from a list or dictionary</td></tr>
    <tr><td>string()   </td><td>String representation of a list or dictionary</td></tr>

  <tr><td colspan="2"><b>Floating point computation</b></td></tr>
    <tr><td>float2nr() </td><td>convert Float to Number</td></tr>
    <tr><td>abs()      </td><td>absolute value (also works for Number)</td></tr>
    <tr><td>round()    </td><td>round off</td></tr>
    <tr><td>ceil()     </td><td>round up</td></tr>
    <tr><td>floor()    </td><td>round down</td></tr>
    <tr><td>trunc()    </td><td>remove value after decimal point</td></tr>
    <tr><td>log10()    </td><td>logarithm to base 10</td></tr>
    <tr><td>pow()      </td><td>value of x to the exponent y</td></tr>
    <tr><td>sqrt()     </td><td>square root</td></tr>
    <tr><td>sin()      </td><td>sine</td></tr>
    <tr><td>cos()      </td><td>cosine</td></tr>
    <tr><td>atan()     </td><td>arc tangent</td></tr>

  <tr><td colspan="2"><b>Variables</b></td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/type.vim">type()</a>           </td><td>type of a variable</td></tr>
    <tr><td>islocked()       </td><td>check if a variable is locked</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/function.vim">function</a>()       </td><td>get a Funcref for a function name</td></tr>
    <tr><td>getbufvar()      </td><td>get a variable value from a specific buffer</td></tr>
    <tr><td>setbufvar()      </td><td>set a variable in a specific buffer</td></tr>
    <tr><td>getwinvar()      </td><td>get a variable from specific window</td></tr>
    <tr><td>gettabvar()      </td><td>get a variable from specific tab page</td></tr>
    <tr><td>gettabwinvar()   </td><td>get a variable from specific window & tab page</td></tr>
    <tr><td>setwinvar()      </td><td>set a variable in a specific window</td></tr>
    <tr><td>settabvar()      </td><td>set a variable in a specific tab page</td></tr>
    <tr><td>settabwinvar()   </td><td>set a variable in a specific window & tab page</td></tr>
    <tr><td>garbagecollect() </td><td>possibly free memory</td></tr>

  <tr><td colspan="2"><b>Cursor and mark position</b></td></tr>
    <tr><td>col()         </td><td>column number of the cursor or a mark</td></tr>
    <tr><td>virtcol()     </td><td>screen column of the cursor or a mark</td></tr>
    <tr><td>line()        </td><td>line number of the cursor or mark</td></tr>
    <tr><td>wincol()      </td><td>window column number of the cursor</td></tr>
    <tr><td>winline()     </td><td>window line number of the cursor</td></tr>
    <tr><td>cursor()      </td><td>position the cursor at a line/column</td></tr>
    <tr><td>getpos()      </td><td>get position of cursor, mark, etc.</td></tr>
    <tr><td>setpos()      </td><td>set position of cursor, mark, etc.</td></tr>
    <tr><td>byte2line()   </td><td>get line number at a specific byte count</td></tr>
    <tr><td>line2byte()   </td><td>byte count at a specific line</td></tr>
    <tr><td>diff_filler() </td><td>get the number of filler lines above a line</td></tr>

  <tr><td colspan="2"><b>Working with text in the current buffer</b></td></tr>
    <tr><td>getline()    </td><td>get a line or list of lines from the buffer</td></tr>
    <tr><td>setline()    </td><td>replace a line in the buffer</td></tr>
    <tr><td>append()    </td><td>append line or list of lines in the buffer</td></tr>
    <tr><td>indent()    </td><td>indent of a specific line</td></tr>
    <tr><td>cindent()    </td><td>indent according to C indenting</td></tr>
    <tr><td>lispindent()    </td><td>indent according to Lisp indenting</td></tr>
    <tr><td>nextnonblank()    </td><td>find next non-blank line</td></tr>
    <tr><td>prevnonblank()    </td><td>find previous non-blank line</td></tr>
    <tr><td>search()    </td><td>find a match for a pattern</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/searchpos.vim">searchpos()</a>    </td><td>find a match for a pattern</td></tr>
    <tr><td>searchpair()    </td><td>find the other end of a start/skip/end</td></tr>
    <tr><td>searchpairpos()    </td><td>find the other end of a start/skip/end</td></tr>
    <tr><td>searchdecl()    </td><td>search for the declaration of a name</td></tr>

  <tr><td colspan="2"><b>System functions and manipulation of files</b></td></tr>
    <tr><td>glob()         </td><td>expand wildcards</td></tr>
    <tr><td>globpath()     </td><td>expand wildcards in a number of directories</td></tr>
    <tr><td>findfile()     </td><td>find a file in a list of directories</td></tr>
    <tr><td>finddir()      </td><td>find a directory in a list of directories</td></tr>
    <tr><td>resolve()      </td><td>find out where a shortcut points to</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/fnamemodify.vim">fnamemodify</a>()  </td><td>modify a file name</td><td>S.a. <code>expand()</code></td></tr>
    <tr><td>pathshorten()  </td><td>shorten directory names in a path</td></tr>
    <tr><td>simplify()     </td><td>simplify a path without changing its meaning</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/executable.vim">executable()</a>   </td><td>check if an executable program exists</td></tr>
    <tr><td>filereadable() </td><td>check if a file can be read</td></tr>
    <tr><td>filewritable() </td><td>check if a file can be written to</td></tr>
    <tr><td>getfperm()     </td><td>get the permissions of a file</td></tr>
    <tr><td>getftype()     </td><td>get the kind of a file</td></tr>
    <tr><td>isdirectory()  </td><td>check if a directory exists</td></tr>
    <tr><td>getfsize()     </td><td>get the size of a file</td></tr>
    <tr><td>getcwd()       </td><td>get the current working directory</td></tr>
    <tr><td>haslocaldir()  </td><td>check if current window used |:lcd|</td></tr>
    <tr><td>tempname()     </td><td>get the name of a temporary file</td></tr>
    <tr><td>mkdir()        </td><td>create a new directory</td></tr>
    <tr><td>delete()       </td><td>delete a file</td></tr>
    <tr><td>rename()       </td><td>rename a file</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/system.vim">system()</a>       </td><td>get the result of a shell command</td></tr>
    <tr><td>hostname()     </td><td>name of the system</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/readfile.vim">readfile()</a>     </td><td>read a file into a List of lines</td></tr>
    <tr><td>writefile()    </td><td>write a List of lines into a file</td></tr>

  <tr><td colspan="2"><b>Date and Time</b></td></tr>
    <tr><td>getftime()       </td><td>get last modification time of a file</td></tr>
    <tr><td>localtime()      </td><td>get current time in seconds</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/strftime.vim">strftime</a>()       </td><td>convert time to a string</td></tr>
    <tr><td>reltime()        </td><td>get the current or elapsed time accurately</td></tr>
    <tr><td>reltimestr()     </td><td>convert reltime() result to a string</td></tr>

  <tr><td colspan="2"><b>Buffers, windows and the argument list</b></td></tr>
    <tr><td>argc()           </td><td>number of entries in the argument list</td></tr>
    <tr><td>argidx()         </td><td>current position in the argument list</td></tr>
    <tr><td>argv()           </td><td>get one entry from the argument list</td></tr>
    <tr><td>bufexists()      </td><td>check if a buffer exists</td></tr>
    <tr><td>buflisted()      </td><td>check if a buffer exists and is listed</td></tr>
    <tr><td>bufloaded()      </td><td>check if a buffer exists and is loaded</td></tr>
    <tr><td>bufname()        </td><td>get the name of a specific buffer</td></tr>
    <tr><td>bufnr()          </td><td>get the buffer number of a specific buffer</td></tr>
    <tr><td>tabpagebuflist() </td><td>return List of buffers in a tab page</td></tr>
    <tr><td>tabpagenr()      </td><td>get the number of a tab page</td></tr>
    <tr><td>tabpagewinnr()   </td><td>like winnr() for a specified tab page</td></tr>
    <tr><td>winnr()          </td><td>get the window number for the current window</td></tr>
    <tr><td>bufwinnr()       </td><td>get the window number of a specific buffer</td></tr>
    <tr><td>winbufnr()       </td><td>get the buffer number of a specific window</td></tr>
    <tr><td>getbufline()     </td><td>get a list of lines from the specified buffer</td></tr>

  <tr><td colspan="2"><b>Command line</b></td></tr>
    <tr><td>getcmdline() </td><td>get the current command line</td></tr>
    <tr><td>getcmdpos()  </td><td>get position of the cursor in the command line</td></tr>
    <tr><td>setcmdpos()  </td><td>set position of the cursor in the command line</td></tr>
    <tr><td>getcmdtype() </td><td>return the current command-line type</td></tr>

  <tr><td colspan="2"><b>Quickfix and location lists</b></td></tr>
    <tr><td>getqflist()  </td><td>list of quickfix errors</td></tr>
    <tr><td>setqflist()  </td><td>modify a quickfix list</td></tr>
    <tr><td>getloclist() </td><td>list of location list items</td></tr>
    <tr><td>setloclist() </td><td>modify a location list</td></tr>

  <tr><td colspan="2"><b>Insert mode completion</b></td></tr>
    <tr><td>complete()       </td><td>set found matches</td></tr>
    <tr><td>complete_add()   </td><td>add to found matches</td></tr>
    <tr><td>complete_check() </td><td>check if completion should be aborted</td></tr>
    <tr><td>pumvisible()     </td><td>check if the popup menu is displayed</td></tr>

  <tr><td colspan="2"><b>Folding</b></td></tr>
    <tr><td>foldclosed()     </td><td>check for a closed fold at a specific line</td></tr>
    <tr><td>foldclosedend()  </td><td>like foldclosed() but return the last line</td></tr>
    <tr><td>foldlevel()      </td><td>check for the fold level at a specific line</td></tr>
    <tr><td>foldtext()       </td><td>generate the line displayed for a closed fold</td></tr>
    <tr><td>foldtextresult() </td><td>get the text displayed for a closed fold</td></tr>

  <tr><td colspan="2"><b>Syntax and highlighting</b></td></tr>
    <tr><td>clearmatches() </td><td>clear all matches defined by matchadd() and the :match commands</td></tr>
    <tr><td>getmatches()   </td><td>get all matches defined by matchadd() and the :match commands</td></tr>
    <tr><td>hlexists()     </td><td>check if a highlight group exists</td></tr>
    <tr><td>hlID()         </td><td>get ID of a highlight group</td></tr>
    <tr><td>synID()        </td><td>get syntax ID at a specific position</td></tr>
    <tr><td>synIDattr()    </td><td>get a specific attribute of a syntax ID</td></tr>
    <tr><td>synIDtrans()   </td><td>get translated syntax ID</td></tr>
    <tr><td>diff_hlID()    </td><td>get highlight ID for diff mode at a position</td></tr>
    <tr><td>matchadd()     </td><td>define a pattern to highlight (a "match")</td></tr>
    <tr><td>matcharg()     </td><td>get info about :match arguments</td></tr>
    <tr><td>matchdelete()  </td><td>delete a match defined by matchadd() or a :match command</td></tr>
    <tr><td>setmatches()   </td><td>restore a list of matches saved by getmatches()</td></tr>

  <tr><td colspan="2"><b>Spelling</b></td></tr>
    <tr><td>spellbadword() </td><td>locate badly spelled word at or after cursor</td></tr>
    <tr><td>spellsuggest() </td><td>return suggested spelling corrections</td></tr>
    <tr><td>soundfold()    </td><td>return the sound-a-like equivalent of a word</td></tr>

  <tr><td colspan="2"><b>History</b></td></tr>
    <tr><td>histadd() </td><td>add an item to a history</td></tr>
    <tr><td>histdel() </td><td>delete an item from a history</td></tr>
    <tr><td>histget() </td><td>get an item from a history</td></tr>
    <tr><td>histnr()  </td><td>get highest index of a history list</td></tr>

  <tr><td colspan="2"><b>Interactive</b></td></tr>
    <tr><td>browse()       </td><td>put up a file requester</td></tr>
    <tr><td>browsedir()    </td><td>put up a directory requester</td></tr>
    <tr><td>confirm()      </td><td>let the user make a choice</td></tr>
    <tr><td>getchar()      </td><td>get a character from the user</td></tr>
    <tr><td>getcharmod()   </td><td>get modifiers for the last typed character</td></tr>
    <tr><td>feedkeys()     </td><td>put characters in the typeahead queue</td></tr>
    <tr><td>input()        </td><td>get a line from the user</td></tr>
    <tr><td>inputlist()    </td><td>let the user pick an entry from a list</td></tr>
    <tr><td>inputsecret()  </td><td>get a line from the user without showing it</td></tr>
    <tr><td>inputdialog()  </td><td>get a line from the user in a dialog</td></tr>
    <tr><td>inputsave()    </td><td>save and clear typeahead</td></tr>
    <tr><td>inputrestore() </td><td>restore typeahead</td></tr>

  <tr><td colspan="2"><b>GUI</b></td></tr>
    <tr><td>getfontname()   </td><td>get name of current font being used</td></tr>
    <tr><td>getwinposx()    </td><td>X position of the GUI Vim window</td></tr>
    <tr><td>getwinposy()    </td><td>Y position of the GUI Vim window</td></tr>

  <tr><td colspan="2"><b>Vim server</b></td></tr>
    <tr><td>serverlist()        </td><td>return the list of server names</td></tr>
    <tr><td>remote_send()       </td><td>send command characters to a Vim server</td></tr>
    <tr><td>remote_expr()       </td><td>evaluate an expression in a Vim server</td></tr>
    <tr><td>server2client()     </td><td>send a reply to a client of a Vim server</td></tr>
    <tr><td>remote_peek()       </td><td>check if there is a reply from a Vim server</td></tr>
    <tr><td>remote_read()       </td><td>read a reply from a Vim server</td></tr>
    <tr><td>foreground()        </td><td>move the Vim window to the foreground</td></tr>
    <tr><td>remote_foreground() </td><td>move the Vim server window to the foreground</td></tr>

  <tr><td colspan="2"><b>Window size and position</b></td></tr>
    <tr><td>winheight()   </td><td>get height of a specific window</td></tr>
    <tr><td>winwidth()    </td><td>get width of a specific window</td></tr>
    <tr><td>winrestcmd()  </td><td>return command to restore window sizes</td></tr>
    <tr><td>winsaveview() </td><td>get view of current window</td></tr>
    <tr><td>winrestview() </td><td>restore saved view of current window</td></tr>

  <tr><td colspan="2"><b>Various</b></td></tr>
    <tr><td>mode()              </td><td>get current editing mode</td></tr>
    <tr><td>visualmode()        </td><td>last visual mode used</td></tr>
    <tr><td>hasmapto()          </td><td>check if a mapping exists</td></tr>
    <tr><td>mapcheck()          </td><td>check if a matching mapping exists</td></tr>
    <tr><td>maparg()            </td><td>get rhs of a mapping</td></tr>
    <tr><td>exists()            </td><td>check if a variable, function, etc. exists</td></tr>
    <tr><td><a href="../../../../blob/master/vimscript/functions/has.vim">has()               </td><td>check if a feature is supported in Vim</td></tr>
    <tr><td>changenr()          </td><td>return number of most recent change</td></tr>
    <tr><td>cscope_connection() </td><td>check if a cscope connection exists</td></tr>
    <tr><td>did_filetype()      </td><td>check if a FileType autocommand was used</td></tr>
    <tr><td>eventhandler()      </td><td>check if invoked by an event handler</td></tr>
    <tr><td>getpid()            </td><td>get process ID of Vim</td></tr>

    <tr><td>libcall()           </td><td>call a function in an external library</td></tr>
    <tr><td>libcallnr()         </td><td>idem, returning a number</td></tr>

    <tr><td>getreg()            </td><td>get contents of a register</td></tr>
    <tr><td>getregtype()        </td><td>get type of a register</td></tr>
    <tr><td>setreg()            </td><td>set contents and type of a register</td></tr>

    <tr><td>taglist()           </td><td>get list of matching tags</td></tr>
    <tr><td>tagfiles()          </td><td>get a list of tags files</td></tr>

    <tr><td>mzeval()            </td><td>evaluate |MzScheme| expression</td></tr>


</table>

## Links

See also `:help 41.6`

## TODO

[`echo`](https://github.com/ReneNyffenegger/about-vim/blob/master/functions/echo.vim) seems to be a command rather than a function.
