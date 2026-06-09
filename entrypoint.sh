#!/bin/bash

# Read users from JSON and create them
echo "Creating users..."

# Parse users.json and create users
users=$(cat /users.json)
count=$(echo "$users" | jq length)

for ((i = 0; i < count; i++)); do
    username=$(echo "$users" | jq -r ".[$i].username")
    password=$(echo "$users" | jq -r ".[$i].password")

    # Check if user already exists
    if ! id "$username" &>/dev/null; then
        # Create user and set password
        useradd -m -s /bin/bash "$username"
        echo "${username}:${password}" | chpasswd

        # Copy bashrc to user's home directory
        cp /dotfiles/.bashrc "/home/$username/.bashrc"
        chown "$username:$username" "/home/$username/.bashrc"

        echo "Created user: $username"
    else
        echo "User already exists: $username"
    fi
done

echo "Starting SSH daemon..."
exec /usr/sbin/sshd -D
