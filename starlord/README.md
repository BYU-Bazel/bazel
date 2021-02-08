# STARLORD

This is a package uses sheer willpower to mold the Bazel source code to suit our needs.

## Sync this repo with the remote

```
git fetch upstream
git merge upstream/master
```

## Random notes

Regex to get all visibility attrs

```
visibility\s*=\s*\[[^\]]*\]
```

Intellij uses this command to find targets

```
Querying targets in project directories...
Command: /usr/local/bin/bazel query --tool_tag=ijwb:IDEA:community --output=label_kind --keep_going "attr(\"tags\", \"^((?!manual).)*$\", //...:all - //bazel-bin/...:all - //bazel-genfiles/...:all - //bazel-out/...:all - //bazel-testlogs/...:all - //bazel-bazel/...:all - //.ijwb/...:all)" --
```

This command takes a long time. In the language server, it might be good to 1) do a quick walk of the bazel file tree, scrapping whatever we can and then 2) do a real bazel file query.

The sync command

```
/** Syncs all repositories specified in the workspace file */
@Command(
    name = SyncCommand.NAME,
    options = {
      PackageOptions.class,
      KeepGoingOption.class,
      LoadingPhaseThreadsOption.class,
      SyncOptions.class
    },
    help = "resource:sync.txt",
    shortDescription = "Syncs all repositories specified in the workspace file",
    allowResidue = false)
public final class SyncCommand implements BlazeCommand {
```

Directory info

- This has info about the project starlark files! Still very complicated.

```
Bazel must be invoked from a directory containing a WORKSPACE file (the “workspace directory”), or a subdirectory thereof. It reports an error if it is not.
The outputRoot directory defaults to ~/.cache/bazel on Linux, /private/var/tmp on macOS, and on Windows it defaults to %HOME% if set, else %USERPROFILE% if set, else the result of calling SHGetKnownFolderPath() with the FOLDERID_Profile flag set. If the environment variable $TEST_TMPDIR is set, as in a test of bazel itself, then that value overrides the default.
We stick the Bazel user’s build state beneath outputRoot/_bazel_$USER. This is called the outputUserRoot directory.
```


