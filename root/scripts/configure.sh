#!/usr/bin/env sh

# Configure the system

# Replace Apache conf with local version
#Add WebDAV site to Apache2's default config and enable CORS
mv /resource/000-default.conf /etc/apache2/sites-available/000-default.conf


