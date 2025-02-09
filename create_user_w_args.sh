#!/bin/bash

echo "========== Creation of User Started =========="

user = "jetha"
password = "test@123"

# Create user
sudo useradd -m "$user"

# Set password securely
echo -e "$password:$password" | sudo passwd "$user"

echo "========== Creation of User Completed =========="

