"""" Compile Options
let g:Tex_DefaultTargetFormat = 'dvi'
"let g:Tex_FormatDependency_dvi = 'dvi,ps,pdf'
"let g:Tex_CompileRule_dvi= 'latex --shell-escape -interaction=nonstopmode $*'
"let g:Tex_CompileRule_ps = 'dvips -o $*.ps $*.dvi'
"let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'

let g:Tex_CompileRule_dvi = 'pdflatex --shell-escape -interaction=nonstopmode $*'

nmap ,ll :!pdflatex --shell-escape %<cr>

let g:Tex_IgnoredWarnings =
\'Underfull'."\n".
\'Overfull'."\n".
\'specifier changed to'."\n".
\'You have requested'."\n".
\'Missing number, treated as zero.'."\n".
\'There were undefined references'."\n".
\'Package Fancyhdr Warning:'."\n".
\'Citation %.%# undefined'
let g:Tex_IgnoreLevel = 8


""""Custom F7 commands
let g:Tex_Com_titleformat = "\\titleformat{<+command+>}{<++>}{0em<++>}{<++>}"
let g:Tex_CustomTemplateDirectory = '$RTP/templates'


""""" Remaps
vmap ,bf `bf
nmap ,bf viw`bf
vmap ,em `em
nmap ,em viw`em
