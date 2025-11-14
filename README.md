# swarm-natcore

## Overview
swarm-natcore is the central NATS server providing the messaging backbone for the swarm ecosystem. It routes inter-pod messages, manages subjects, and ensures reliable connectivity without interpreting or modifying messages.

## Purpose
- Provide stable, predictable NATS server environment
- Route messages between pods (logger, cronctl, vaultctl, gateway)
- Maintain subject hierarchies
- Ensure high availability and performance

## Dependencies
- None (standalone NATS server)

## Message Patterns
- No specific patterns; acts as transparent router
- Supports all NATS subjects used by other pods

## Operating Principles
- Minimal container with Debian slim base
- Runs as non-root user for security
- Exposes port 4222 for NATS connections
- No additional services or logic

## Build and Run
```bash
docker build -t swarm-natcore .
docker run -p 4222:4222 swarm-natcore
```

## Interoperability
- Compatible with NATS clients in other pods
- Supports clustering if configured (future enhancement)
- Maintains predictable performance for steady throughput