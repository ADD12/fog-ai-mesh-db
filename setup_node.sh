#!/bin/bash

echo "==== FOG-AI-MESH Node Setup ===="

# Install dependencies
sudo apt update && sudo apt install -y \
 build-essential \
  libsqlcipher-dev \
  python3 python3-pip \
  nodejs npm \
  git

# Install Python libraries
pip3 install pysqlcipher3 cryptography

# Clone this repo
git clone https://github.com/YourGitHubUsername/fog-ai-mesh-db.git
cd fog-ai-mesh-db

# Install Node.js dependencies
npm install

# Setup IPFS
npm install -g ipfs
ipfs init
ipfs daemon &

# Start OrbitDB app
node orbit_node.js &
# Optional: Make SQLite database
python3 create_encrypted_db.py

echo "Setup complete. Node is live."

