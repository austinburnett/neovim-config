File Guide:

The file names are very straightforward.


-- SET --
set.lua contains all options that we have set for neovim 

-- REMAP --
remap.lua contains all keybinding remappings for neovim

-- PACKER --
pack.lua contains all of our installed packages for neovim
note: dont forget to run :source before trying to execute commands for Packer
:h source for more info

-- INIT --
init.lua just requires set.lua & remap.lua so they can be used
