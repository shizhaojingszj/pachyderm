## ./pachctl flush-commit

Wait for all commits caused by the specified commits to finish and return them.

### Synopsis


Wait for all commits caused by the specified commits to finish and return them.

Examples:

```sh

# return commits caused by foo/XXX and bar/YYY
$ pachctl flush-commit foo/XXX bar/YYY

# return commits caused by foo/XXX leading to repos bar and baz
$ pachctl flush-commit foo/XXX -r bar -r baz

```

```
./pachctl flush-commit commit [commit ...]
```

### Options

```
      --raw           disable pretty printing, print raw json
  -r, --repos value   Wait only for commits leading to a specific set of repos (default [])
```

### Options inherited from parent commands

```
      --no-metrics   Don't report user metrics for this command
  -v, --verbose      Output verbose logs
```

### SEE ALSO
* [./pachctl](./pachctl.md)	 - 

###### Auto generated by spf13/cobra on 17-Aug-2017
