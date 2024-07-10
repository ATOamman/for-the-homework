#!/bin/bash

# Define variables
REMOTE_HOST="example.com"
REMOTE_USER="deploy"
REMOTE_DIR="/var/www/myapp"
GIT_REPO="git@github.com:username/myapp.git"
BRANCH="main"

# SSH into the remote server and deploy
ssh "$REMOTE_USER@$REMOTE_HOST" << EOF
    cd "$REMOTE_DIR"
    echo "Pulling latest changes from Git repository..."
    git pull origin $BRANCH
    echo "Installing dependencies..."
    npm install  # Example for Node.js projects, adjust as needed
    echo "Restarting application..."
    sudo systemctl restart myapp.service  # Example for systemd service
    echo "Deployment completed."
EOF

echo "Deployment script executed successfully."
