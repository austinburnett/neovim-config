# File Guide:

This document contains information on the purpose of each
file in this directory.

### set.lua

set.lua contains all options that I've set for neovim.

### remap.lua

remap.lua contains all keybinding I've set for neovim.

### packer.lua

pack.lua contains all of the installed packages for neovim.
Note, don't forget to run `:source %` before trying to execute
commands for Packer. Use `:h source` for more info. The symbol
'%' is a register that stores the name of the file currently
being edited. Use `:reg` to view a list of your registers.

### init.lua

init.lua imports set.lua & remap.lua so they can be used.
