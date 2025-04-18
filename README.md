<div align="center">

<h1 align="center">Shiftkey</h1>
<p align="center">Automation script written in AutoHotkey v2 for adding custom keyboard shortcuts, and overriding system functionality. Built for <b>Windows 10</b>, and compatible with most anti-cheat systems.

</div>

## Getting Started

You can download pre-compiled executables from the <a href="https://github.com/kunal-ma/Shiftkey/releases">Releases</a> section or compile the scripts yourself using the Ahk2Exe compiler. While the scripts can be run directly, using the executables is recommended for better performance and compatibility.

## Building from Source

All release builds include additional metadata added using **Resource Hacker**. To replicate this in your build, update the `Version Info` section with the following modifications using the tool:

```c
		VALUE "FileDescription", "Shiftkey"
		VALUE "OriginalFilename", "Shiftkey.exe"
		VALUE "ProductName", "Shiftkey"
```

## Usage

- **Global Media Controls**

   - `Win + F1` - Play/Pause Media
   - `Win + F2` - Previous Media
   - `Win + F3` - Next Media

- **Window Management**

   - `Alt + ~` - Resize active window to 1300x1200
   - `Win + ~` - Resize active window to 1920x1200

- **Custom Shortcuts**

   - `Alt + N` - Open Network Connections
   - `Win + T` - Open Windows Powershell
   - `Win + O` - Open ShareX's OCR tool

- **Remapping buttons**

   - `Win + Shift + S` -> `Ctrl + Shift + Alt + Win + S`
   <br> Remap the default Windows screenshot button to a custom hotkey for better compatibility with other applications.

- **Text Shortcuts**
	
	Customize up to 10 text shortcuts for frequently used phrases, accessible via the number keys.

   - **Setup :** Edit the values under the `Text` section in the `settings.ini` file to set your custom text shortcuts.
   
   - **Usage :** `Win + ,` followed by `1 to 0` key to paste the respective text shortcut.

- **Exit the application : `Win + Alt + Enter`**

## Acknowledgements

Distributed under the GNU Affero General Public License v3.0. See <a href="https://github.com/kunal-ma/Shiftkey/blob/main/LICENSE">`LICENSE`</a> for more information.

Your contributions can be invaluable to this project. If you have an idea to make this better, feel free to fork the repository and submit a pull request. Thank you for your support :)
