# Lightoros effects dev helper

Cross-platform environment for development and testing of scripts for the [lightoros](https://github.com/Gamadril/lightoros) Lua effect plugin.
Created for faster development of effects outside of the lightoros engine.

Configuration
-------------
Variables and values required by a Lua script are defined in the `config.lua` file.

`v_width` defines the width of the virtual screen.

`v_height` defines the height of the virtual screen.

`effect` defines the name of the lua script (without the file extension) in the `effects` folder to test.

`args` is the table to hold script specific attributes that will be passed to the script from outside.

Requirements
------------
[LÖVE](https://love2d.org/) framework/runtime is required to run the effect sripts.
Check the project documentation for installation instructions. 

Execute `love .` from the root folder to run.

License
-------
MIT license, see [LICENSE](./LICENSE)