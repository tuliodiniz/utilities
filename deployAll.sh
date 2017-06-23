#!/bin/bash

echo ""
echo "Deploy all projects of Vulcano Team."

echo "Cleaning hot-oauthsecurity..."
rm -rf /home/tulio/dev/env/wildfly-9.0.1.Final-Vulcano.2-A-Missao/standalone/deployments/hot-oauthsecurity-ear.ear
echo "Copying hot-oauthsecurity..."
cp /media/backup/dev/git/vulcano/backend/hot-oauthsecurity/hot-oauthsecurity-ear/target/hot-oauthsecurity-ear.ear /home/tulio/dev/env/wildfly-9.0.1.Final-Vulcano.2-A-Missao/standalone/deployments

echo "Cleaning hot-marketplace..."
rm -rf /home/tulio/dev/env/wildfly-9.0.1.Final-Vulcano.2-A-Missao/standalone/deployments/hot-marketplace-ear.ear
echo "Copying hot-marketplace..."
cp /media/backup/dev/git/vulcano/backend/hot-marketplace/hot-marketplace-ear/target/hot-marketplace-ear.ear /home/tulio/dev/env/wildfly-9.0.1.Final-Vulcano.2-A-Missao/standalone/deployments