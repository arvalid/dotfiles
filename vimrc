" Map :W to :w in vim
command WQ wq
command Wq wq
command W w
command Q q

" To search for visually selected text, put this line in your vimrc:
" To use the mapping, visually select the characters that are wanted in the search, then type // to search for the next occurrence of the selected text. Then press n to search for the next occurrence.
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
