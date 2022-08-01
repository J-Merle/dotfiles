inoremap ,prin println!("{<++>}", <++>);<esc>^/<++><cr>v3l

nnoremap <localleader>T o#[cfg(test)]<cr>mod tests {<cr>use super::*;<cr><cr>#[test]<cr>fn <++>() {<cr><++><cr>}<cr>}<esc>9k
nnoremap <localleader>t o#[test]<cr>fn <++>() {<cr><++><cr>}<esc>3k
