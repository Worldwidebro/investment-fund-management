#!/bin/bash

# 🚀 Deployment Script for investment-fund-management
# Billionaire Consciousness Empire

set -e

echo "🚀 Deploying investment-fund-management..."

# Build and start services
docker-compose up -d --build

# Wait for services to be ready
sleep 10

# Health check
echo "🔍 Running health checks..."
docker-compose ps

# Show logs
echo "📋 Recent logs:"
docker-compose logs --tail=20

echo "✅ investment-fund-management deployed successfully!"
echo "🌐 Access: http://localhost:3000"
