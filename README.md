# plushu-ignore-unknown-opts

By default, Plushu will exit with an error for the first option it does not
recognize (after checking if it will run it as a command). This plugin makes it
so, once Plushu has finished parsing pre-command options, any remaining
arguments beginning with a hyphen will be silently removed.

Note that this will still treat the first argument not beginning with a hyphen
as the beginning of a command, even if that argument was meant as a value for a
preceding option. For example:

```bash
plushu --app myapp --set example config
```

If you have [the app-long-opt plugin][plushu/plushu-app-long-opt]
installed, but no plugin for `--set`, the app-long-opt plugin will recognize
and remove the `--app` and `myapp` arguments, but ignore-unkown-opts will only
remove `--set`, then interpret the command as `example config`.

[plushu/plushu-app-long-opt]: https://github.com/plushu/plushu-app-long-opt

To prevent this, you should combine your values with the option by means of an
equals sign, like so:

```bash
plushu --app=myapp --set=example config
```
