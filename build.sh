#!/bin/bash

npm install

# Build the Next.js app for production
npm run build

# Delete the app directory
rm -rf ./app

# Create a new app directory
mkdir ./app

# Move all files from ./.next/standalone to ./app
cp -r ./.next/standalone/* ./app

mkdir ./app/.next

# Move all files in .next to ./app/.next
cp -r ./.next/* ./app/.next
