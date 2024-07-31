# Clang-format for Visual Studio Code

This repository provides a configuration for Visual Studio Code to write code in C++ that is well formatted (using clang-format), in an editor that is comfortable for the user.

## Dependencies

The following dependency must be installed before applying the configuration:

```bash
sudo apt install clang-format
```

## Usage

To apply the configuration you only need to run the command:

```bash
bash script.bash
```

**NOTE**: By default, the script assumes that the VS Code workspace folder is `~/catkin_ws/src/`.
If you want to specify another directory, just run

```bash
bash script.bash <your/vscode/ws/folder/>
```

When prompted, type the path of your catkin workspace **root** folder, relative to your VSCode workspace folder.
For instance, if you workspace looks like this

```text
user@computer:~/catkin_ws$ tree -L 1 -a
.
├── build
├── .catkin_tools
├── devel
├── logs
├── src
└── .vscode
```

then the VSCode workspace folder (`.vscode`) is already placed in your catkin workspace folder, so just press the button `Enter` of your keyboard to type an empty string.
Otherwise, if your workspace looks like this

```text
user@computer:~/catkin_ws/src$ tree -L 1 -a
.
├── base_arm
├── cooperating_workcell
├── dynamic_programming_optimization
├── franka_ros
├── kinova_description
├── m1n6s300_ikfast
├── panda_ikfast_panda_arm_plugin
├── panda_moveit_config
├── roboticsgroup_gazebo_plugins
├── robotics-matlab
├── robotiq
├── .rosinstall
├── .rosinstall.bak
├── twor_shiller
├── universal_robot
├── Universal_Robots_ROS_Driver
├── utilities
├── .vscode
└── yamlmatlab
```

then your VSCode workspace folder (`.vscode`) is placed under the `src` folder of your catkin workspace folder, so type `../` to specify that the relative path of catkin's workspace root (`~/catkin_ws/src`) is the parent folder of the folder containing `.vscode` (`~/catkin_ws/`).
Don't forget the ending `/` when typing your relative path.

## Result

After executing the script, the editor will be configured with `Clang` as the default formatter.
To format your `cpp` code, simply open a source file and use the following key combination to format the code `Ctrl+Shift+I`.
You can modify `<your/vscode/ws/folder>/.vscode/settings.json` to modify some of the default settings, at your will.
