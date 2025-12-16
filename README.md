# Magisk Auto Off

This Magisk module automatically monitors the battery level and initiates a shutdown countdown when the battery reaches 3% or below.

## Features

- Monitors battery capacity every 60 seconds
- When battery <= 3%, displays a 30-second countdown via notifications
- Automatically shuts down the device after countdown

## Installation

1. Zip the contents of this directory into a ZIP file (e.g., migsk_auto_off.zip)
2. Flash the ZIP in Magisk Manager
3. Reboot

## Requirements

- Magisk v23.0+
- Root access

## Notes

- The countdown is shown as persistent notifications
- Ensure `cmd` tool is available (Android 8+)
- The module runs as a service on boot