# Clang-format for Visual Studio Code

This repository provides a configuration for Visual Studio Code to write code in C++ that is well formatted (using clang-format), in an editor that is comfortable for the user.

## Dependencies

The following dependency must be installed before applying the configuration:

```bash
sudo apt install clang-format
```

## Apply the configuration

To apply the configuration you only need to run the command:

```bash
bash script.bash
```

**NOTE**: By default, the script assumes that the VS Code workspace folder is `~/catkin_ws/src/`.
If you want to specify another directory, just run

```bash
bash script.bash <your/vscode/ws/folder/>
```

After executing the script, the editor will be configured with `Clang` as the default formatter.
To format your `cpp` code, simply open a source file and use the following key combination to format the code `Ctrl+Shift+I`.
You can modify `<your/vscode/ws/folder>/.vscode/settings.json` to modify some of the default settings, at your will.
