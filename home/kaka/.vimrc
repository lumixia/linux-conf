"====================================================================
" Kaka�ο�������Դ������2010��12��25��(ʥ����)
"     By Kaka <win.milan@gmail.com>
"====================================================================

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" һ���趨
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �趨Ĭ�Ͻ���
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

"���consle�������
language messages zh_CN.utf-8

"�Ƿ����VI��compatibleΪ���ݣ�nocompatibleΪ����ȫ����
"�������Ϊcompatible����tab�������ɿո�
set nocompatible

" history�ļ�����Ҫ��¼������
set history=200

" �ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ��
set confirm

" ����ļ�����
filetype on

" �����ļ����Ͳ��
filetype plugin on

" Ϊ�ض��ļ�����������������ļ�
filetype indent on

" ����ȫ�ֱ���
set viminfo+=!

" �������·��ŵĵ��ʲ�Ҫ�����зָ�
set iskeyword+=_,$,@,%,#,-

" �﷨����
syntax on

" �����ַ������䲻��100������
 :highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
 :match OverLength '\%82v.*'

" ״̬����ɫ
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �ļ�����
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ��Ҫ�����ļ��������Լ���Ҫȡ�ᣩ
set nobackup

" ��Ҫ����swap�ļ�����buffer��������ʱ��������
setlocal noswapfile
set bufhidden=hide

" �ַ���������������Ŀ
set linespace=0

" ��ǿģʽ�е��������Զ���ɲ���
set wildmenu

" ��״̬������ʾ�������λ�õ��кź��к�
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" �����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2
set cmdheight=2

" ʹ�ظ����backspace����������indent, eol, start��
set backspace=2

" ����backspace�͹�����Խ�б߽�
set whichwrap+=<,>,h,l

" ������buffer���κεط�ʹ����꣨����office���ڹ�����˫����궨λ��
"set mouse=a
set selection=exclusive
set selectmode=mouse,key

" ������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ
set shortmess=atI

" ͨ��ʹ��: commands������������ļ�����һ�б��ı��
set report=0

" ����vim��������ĵε���
set noerrorbells

" �ڱ��ָ�Ĵ��ڼ���ʾ�հף������Ķ�
set fillchars=vert:\ ,stl:\ ,stlnc:\

"�趨�ļ������Ŀ¼Ϊ��ǰĿ¼
set bsdir=buffer

"�Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
set autochdir

"�Զ����¼����ⲿ�޸�����
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ������ƥ��
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ������ʾƥ�������
set showmatch

" ƥ�����Ÿ�����ʱ�䣨��λ��ʮ��֮һ�룩
set matchtime=5

" ��������ʱ����Դ�Сд
set ignorecase

"���������Ĺؼ���
set hlsearch
" ��Ҫ�����������ľ��ӣ�phrases��
"set nohlsearch

" ������ʱ������Ĵʾ�����ַ�����������firefox��������
set incsearch

" ����:set list������Ӧ����ʾЩɶ��
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" ����ƶ���buffer�Ķ����͵ײ�ʱ����3�о���
"set scrolloff=3

" ��Ҫ��˸
set novisualbell

" �ҵ�״̬����ʾ�����ݣ������ļ����ͺͽ��룩
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%m/%d/%y\ -\ %H:%M\")}

" ������ʾ״̬��
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �ı���ʽ���Ű�
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �Զ���ʽ��
set formatoptions=tcrqn

" �̳�ǰһ�е�������ʽ���ر������ڶ���ע��
set autoindent

" ΪC�����ṩ�Զ�����
set smartindent

" ʹ��C��ʽ������
set cindent

" �Ʊ��Ϊ4
set tabstop=4

" ͳһ����Ϊ4
set softtabstop=4
set shiftwidth=4

"�ÿո����tab
set expandtab
" ��Ҫ�ÿո����tab
" set noexpandtab

" ��Ҫ����
set nowrap

" ���кͶο�ʼ��ʹ���Ʊ��
set smarttab

"�и���
"set cursorline
"�и������뺯���б��г�ͻ
"set cursorcolumn

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags���趨
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ������������
let Tlist_Sort_Type = "name"
" ���Ҳ���ʾ����
let Tlist_Use_Right_Window = 1
" ѹ����ʽ
let Tlist_Compart_Format = 1
" ���ֻ��һ��buffer��kill����Ҳkill��buffer
let Tlist_Exist_OnlyWindow = 1
" ��Ҫ�ر������ļ���tags
let Tlist_File_Fold_Auto_Close = 0
" ��Ҫ��ʾ�۵���
let Tlist_Enable_Fold_Column = 0

"F8����/���£��Լ�C-F8ɾ��tags�ļ�
set tags=tags;
set autochdir
function! UpdateTagsFile()
    silent !ctags -R --fields=+ianS --extra=+q
endfunction
nmap <F8> :call UpdateTagsFile()<CR>

"Ctrl + F8ɾ��tags�ļ�
function! DeleteTagsFile()
    "Linux�µ�ɾ������
    silent !rm tags
    "Windows�µ�ɾ������
    "silent !del /F /Q tags
endfunction
nmap <C-F8> :call DeleteTagsFile()<CR>
"�˳�VIM֮ǰɾ��tags�ļ�
"au VimLeavePre * call DeleteTagsFile()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ֻ�������ļ����ͱ���⵽��ʱ����ʾ�кţ���ͨ�ı��ļ�����ʾ

if has("autocmd")
   "autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number
   "set number
   autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->
   autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o/*<ESC>'>o*/
   autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100
   "����Ҫ����html�Ĳ��
   "autocmd Filetype html,xml,xsl source $HOME/.vim/plugin/closetag.vim

   "��¼�ϴιرյ��ļ���״̬
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
   "���뵱ǰ�༭���ļ���Ŀ¼
   autocmd BufEnter * exec "cd %:p:h"
endif " has("autocmd")

" F5���������C����F6���������C++����
" ��ע�⣬����������windows��ʹ�ûᱨ��
" ��Ҫȥ��./�������ַ�

" C�ı��������
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc

" C++�ı��������
map <F6> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc

" �ܹ�Ư������ʾ.NFO�ļ�
set encoding=utf-8
function! SetFileEncodings(encodings)
    let b:myfileencodingsbak=&fileencodings
    let &fileencodings=a:encodings
endfunction
function! RestoreFileEncodings()
    let &fileencodings=b:myfileencodingsbak
    unlet b:myfileencodingsbak
endfunction

au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single
au BufReadPost *.nfo call RestoreFileEncodings()

" ������ʾ��ͨtxt�ļ�����Ҫtxt.vim�ű���
au BufRead,BufNewFile *  setfiletype txt

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �����۵�ģʽ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set foldcolumn=4
"��������۵����۵��ʹ�
"set foldopen=all
"�ƿ��۵�ʱ�Զ��ر��۵�
"set foldclose=all
"zf zo zc zd zr zm zR zM zn zi zN
"�������۵�
"   manual  �ֹ������۵�
"   indent  �����������ʾ���߼�����۵�
"   expr    �ñ��ʽ�������۵�
"   syntax  ���﷨�����������۵�
"   diff    ��û�и��ĵ��ı������۵�
"   marker  �����еı�־�۵�
set foldmethod=syntax
"����ʱ��Ҫ�Զ��۵�����
set foldlevel=100
" �ÿո���������۵�
set foldenable
"set foldmethod=syntax
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"-----------------------------------------------

" minibufexpl�����һ������
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" ����������ʾ�к�
" set number

"ȥ���й�viһ����ģʽ��������ǰ�汾��һЩbug�;���
set nocp

"��ճ��ģʽ������ճ�������ĳ������Ͳ����λ��
set paste

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F2�����˳�ʱ�Զ�������β�Ŀո��Լ��ļ�β���Ķ������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
"Remove indenting on empty line
map <F2> :w<CR>:call CleanupBuffer(1)<CR>:noh<CR>
function! CleanupBuffer(keep)
    " Skip binary files
    if (&bin > 0)
        return
    endif
    " Remove spaces and tabs from end of every line, if possible
    silent! %s/\s\+$//ge
    " Save current line number
    let lnum = line(".")
    " number of last line
    let lastline = line("$")
    let n        = lastline
    " while loop
    while (1)
        " content of last line
        let line = getline(n)
        " remove spaces and tab
        if (!empty(line))
            break
        endif
        let n = n - 1
    endwhile
    " Delete all empty lines at the end of file
    let start = n+1+a:keep
    if (start < lastline)
        execute n+1+a:keep . "," . lastline . "d"
    endif
    " after clean spaces and tabs, jump back
    exec "normal " . lnum . "G"
endfunction

"F11�鿴�򿪵��ļ��б�bufexplorer�����
"let g:bufExplorerDefaultHelp = 1
"let g:bufExplorerDetailedHelp = 0
"nmap <F11> :BufExplorer <CR>

"nnoremap <F5> :GundoToggle<CR>

" ��Enterת��ɻ��У��ڷǲ���ģʽ
nmap   <CR>  i<CR><ESC>
