# viMaxNeo

Neovim version of my original viMax plugin for enabling the + and - keys to change font size (similar to Google Chrome but without using the Ctrl key). 

Hopefully this will ease the strain on your eyes, fellow Neovimmers 8)

#Installation

## Install using Pathogen (Skip to step 4 if you already have Pathogen)

viMaxNeo is packaged to be easily downloadable/updateable via the Pathogen plugin.

1. Install [pathogen.vim] into `~/.vim/autoload/` (see [pathogen's
   readme][install-pathogen] for more information.)

[pathogen.vim]: http://www.vim.org/scripts/script.php?script_id=2332
[install-pathogen]: https://github.com/tpope/vim-pathogen#installation

2. Enable pathogen in your vimrc:

   ```vim
   call pathogen#infect()
   ```

3. Create the directory `~/vimfiles/bundle/`:

        mkdir ~/vimfiles/bundle

4. Clone the `viMaxNeo` repo into `~/vimfiles/bundle/`:

        git clone https://github.com/dwijesinghe/viMaxNeo.git ~/vimfiles/bundle/viMaxNeo/

To Update:
Run git pull from within ~/vimfiles/bundle/viMaxNeo/

## Install using Zip file

The plugin can also be installed by downloading the zip file and copying the vim file to your user directory. You can then enable the plugin on startup by adding the following line to your .vimrc file:
 
 ```vim
 :source ~/viMaxNeo.vim
 ```

#Usage

Once installed, the + and - keys should increase/decrease your font size when in command mode in Neovim. As far as I can see from initial testing, changing fonts in Neovim seems to be much slower than changing fonts in Vim (this may be due to the new `GuiFont` command as opposed to the old `set guifont` command. If anyone knows how to improve the response time of this plugin feel free to let me know or submit a pull request. 

Font size is changed in increments of 1. Please not that not all fonts in Neovim support all sizes (using this plugin with the Fixedsys font will be somewhat disappointing). Also, like the original Vim, Neovim only supports fixed width fonts at this time.


##Contributing
I welcome collaboration. Please maintain the general style of code and always feel free to poke me for additional information.


## License 

(The MIT License)

Copyright (c) 2017

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
