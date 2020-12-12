# HDHomeRun Command Line Interface
## hdhomerun_cli

Shortcuts for command line use of SiliconDust HDHomeRun.

### "Why?" you ask?
Yes, SiliconDust provides a command-line utility hdhomerun_config.  I found using that for more than one or two commands was cumbersome.  These command line shortcuts try to reduce the redundant typing of redundantness.  It also enables using your shell's tab completion feature while interfacing with the HDHR!  Think of it as the HDHR analog for Linux SysFS, except with executables.  I preserve SiliconDust's command names and their directory-structure of properties.

If you've used hdhomerun_config, this should feel pretty familiar.

## Usage

Start with ./discover; it'll add links for found devices to your directory structure.  *(Feature not yet implemented)*
For now: edit .config.sh to match your devices.

Browse the directory structure

Run anything you can find.  Example:

```bash
cd tuner0   # I'm talking to tuner0 now; please don't make me type "tuner0" again!
ls          # Yes, you can list your options!
./channel 2 # Sets a property
./channel   # Gets a property
./sta<tab>  # Yup, tap completion!
./status
```

## Notes

There is some mixing of "commands" and "properties."  It's not recommended for purists.

For example, these all do the same thing:
```bash
./get /tuner0/channel
tuner0/get channel
tuner0/channel

```

If you're here, you're probably not a purist anyway.

## Dependencies

- libhdhomerun: Provides hdhomerun_config utility.  You may have to build for you platform from [Silicondust repository](https://github.com/Silicondust/libhdhomerun)
- bash:         "GNU Bourne Again SHell"
