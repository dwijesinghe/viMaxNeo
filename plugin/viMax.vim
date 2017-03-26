" viMax - Plugin enabling the + and - keys to trigger font size changes. (= key mimics + key)

function! ChangeFont(value)
	
	"Get current font information
	redir => curFont
	:Guifont
	redir END
	"echo curFont

	"Extract the current font size
	let l:curFontSize = substitute(curFont,"^.*\:h","", "")
	let l:curFontSize = substitute(l:curFontSize,":.*$","", "")
	let l:curFont = substitute(curFont,":.*$","", "")
	"echo l:curFont

	"Build and execute font change command
	let l:curFontSize = curFontSize + a:value
	"echo a:value
	let l:fontCmd = ":h" . l:curFontSize
	let l:fontCmd = ":GuiFont " . l:curFont . l:fontCmd
	let l:fontCmd = substitute(l:fontCmd,"\n","","")
  "echo l:fontCmd
	:sil execute l:fontCmd
	:normal "<cr>"
endfunction

:map - :call ChangeFont(-1)<cr><cr>
:map + :call ChangeFont(1)<cr><cr>
