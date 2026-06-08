#!/bin/bash

# Read users from JSON and create them
echo "Creating users..."

# Parse users.json and create users
python3 -c "
import json
import subprocess
import os

with open('/users.json', 'r') as f:
    users = json.load(f)

for user in users:
    username = user['username']
    password = user['password']
    
    # Check if user already exists
    result = subprocess.run(['id', username], capture_output=True, text=True)
    if result.returncode != 0:
        # Create user
        subprocess.run(['useradd', '-m', '-s', '/bin/bash', username])
        # Set password
        subprocess.run(['chpasswd'], input=f'{username}:{password}', text=True)
        print(f'Created user: {username}')
    else:
        print(f'User already exists: {username}')
"

echo "Starting SSH daemon..."
exec /usr/sbin/sshd -D
