# How to make git submodules do the right thing

Since I got this working once, forgot it, and spent an hour or so refiguring it out. 

List of existing submodules lives at `.gitmodules`.

Just pulling a repo doesn't mean that the submodules will work as expected. Use this:

```
git submodule init && git submodule update && git submodule status
```

# How to get Vundle working for vim

In vim, `:PluginInstall`, outside of vim `vim +PluginInstall +qall`
