set background=dark
hi clear

if exists('syntax on')
  syntax reset
end

let g:colors_name = "nano"
set t_Co=256

hi Normal       guibg=#282d3f guifg=#bec6d4
hi LineNr       guifg=#4b5277
hi CursorLineNr guifg=#9ba6e4
hi Cursor       guibg=#7380ad guifg=#000000
hi lCursor      guibg=#7380ad guifg=#000000
hi CursorIM     guibg=#7380ad guifg=#000000
hi TermCursor   guibg=#7380ad
hi Visual       guibg=#5e6a96
hi CursorLine   guibg=#242938
hi String       guifg=#bcd992
hi Number       guifg=#e6c17d
hi Comment      guifg=#6c769b gui=italic
hi StatusLine   guibg=#97a6db guifg=#222634
hi Search       guibg=#3d486d guifg=#acc6ec
hi Error        guibg=NONE    guifg=#f48771 gui=underline
hi ErrorMsg     guibg=NONE    guifg=#cb5b5b gui=bold
hi Pmenu        guibg=#222634 guifg=#ebeaff
hi PmenuSel     guibg=#1f222e guifg=#ff728c
hi PmenuSbar    guibg=#222634
hi PmenuThumb   guibg=#383c49
hi Conditional  guifg=#b298ff
hi CurSearch    guibg=#fac748 guifg=#282d3f
hi IncSearch    guibg=#282d3f guifg=#fac748
hi MatchParen   guifg=#282d3f guibg=#fac748

set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,i:blinkwait100-blinkoff400-blinkon250
