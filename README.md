# PurpleCord Theme for Vencord

A sleek purple-themed customization for your Discord client using Vencord.

## Features

- Custom server icons styling
- Clean and minimalistic UI elements
- Purple-focused color scheme
- Selective element hiding for a cleaner interface

## Installation

1. Make sure you have Vencord installed and properly set up
2. Clone this repository to your local machine
3. **Important**: Before running the install script, verify that your Vencord themes directory is located at `~/.config/Vencord/themes/`. If your Vencord installation uses a different path, you'll need to modify the paths in `install.sh`
4. Run the installation script:
   ```bash
   ./install.sh
   ```

## Components

- `hide.css`: Contains styles for hiding specific Discord elements to create a cleaner interface
- `roundServerIcons.css`: Custom styling for server icons with rounded corners and hover effects
- `install.sh`: Installation script to set up the theme in your Vencord environment

## Troubleshooting

If the installation fails:
1. Check if the Vencord themes directory exists at `~/.config/Vencord/themes/`
2. Ensure you have proper permissions to create symbolic links
3. Verify that all CSS files are present in the repository

## License

This project is licensed under the terms included in the LICENSE file.

## Contributing

Feel free to submit issues and pull requests to help improve PurpleCord!
