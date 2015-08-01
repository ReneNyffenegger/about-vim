redir > executable.out

if !executable('reg')
    echo 'reg ist not executable'
    q
endif

echo system('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts"')
q

"    Arial (TrueType)    REG_SZ    arial.ttf
"    Arial Italic (TrueType)    REG_SZ    ariali.ttf
"    Arial Bold (TrueType)    REG_SZ    arialbd.ttf
"    Arial Bold Italic (TrueType)    REG_SZ    arialbi.ttf
"    ...
"    ...
