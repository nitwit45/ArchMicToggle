# MicToggle

MicToggle is a bash script that allows you to toggle the microphone on and off System-Wide in Linux. It provides a convenient way to mute and unmute your microphone with ease.

## Demo Video

Watch the demo video to see MicToggle in action:

<iframe width="560" height="315" src="https://streamable.com/e/hgs7ot?nocontrols=1" frameborder="0" allowfullscreen></iframe>


![Muted](./icons/Muted.png) ![Unmuted](./icons/Unmuted.png)

## Table of Contents
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Customization](#customization)

## Features

- Toggle microphone state between muted and unmuted.
- Customizable icon path for notifications.

## Prerequisites

Make sure you have the following installed on your system:

- `amixer`: Command-line audio mixer tool.
- `dunstify`: Notification tool for desktop notifications.

## Installation

Clone the repository to your local machine:

```bash
git clone https://github.com/your-username/MicToggle.git
cd MicToggle
# Make the script executable:
chmod +x mic_toggle.sh
```
## Usage

Run the script:
```bash
./mic_toggle.sh
```
The script will automatically determine the icon path based on its location.

### Bind Dedicated Mute Microphone System-Wide Key

./mic_toggle.sh - Toggles the microphone state. (You can add it in the manner shown below into the .config/i3/config file or i3 config file)

```
# Custom mute mic System wide buttons (F5)
bindsym --release F5 exec /home/**your-username**/Scripts/MicToggle/toggle-mic.sh		
```

## Customization

You can customize the icons by replacing the images in the icons directory.
