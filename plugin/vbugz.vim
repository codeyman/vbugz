" --------------------------------
" Add our plugin to the path
" --------------------------------
python import sys
python import vim
python sys.path.append(vim.eval('expand("<sfile>:h")'))

" --------------------------------
"  Function(s)
" --------------------------------
function! VbugzMain()
python << endOfPython

from vbugz import vbugz_helper

bugid,ret=vbugz_helper(vim.current.buffer.name,vim.current.range.start)
if bugid != 0:
    vim.command("new")
    vim.command("setlocal buftype=nofile")
    lines = ret.split('\n')
    vim.current.buffer.append(["BUG ID: {}".format(bugid), "===================", "    "])
    vim.current.buffer.append(lines)
    vim.command("set noma")
else:
    print ("No Bug found"); 

endOfPython
endfunction

" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! Vbugz call VbugzMain()
