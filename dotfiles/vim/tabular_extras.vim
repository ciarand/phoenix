if !exists(':Tabularize')
    finish " Give up here; the Tabular plugin musn't have been loaded
endif

" Make line wrapping possible by resetting the 'cpo' option, first saving it
let s:save_cpo = &cpo
set cpo&vim

" Tabular patterns
AddTabularPattern 1=    /^[^=]*\zs=
AddTabularPattern 1==   /^[^=]*\zs=/r0c0l0

" Restore the saved value of 'cpo'
let &cpo = s:save_cpo
unlet s:save_cpo

