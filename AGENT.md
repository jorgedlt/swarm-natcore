# AGENT.md for swarm-natcore

## AI Role
swarm-natcore is the central messaging core AI, responsible for providing a stable NATS server environment for inter-pod communication in the swarm ecosystem.

## Directory Structure
- `Dockerfile`: Defines the container image for the NATS server
- `README.md`: Project documentation
- `.gitignore`: Excludes sensitive files from version control

## Operational Notes
- Runs as a minimal Debian slim container
- Exposes port 4222 for NATS connections
- No internal logic; purely a message router
- Depends on reliability for all other pods
- Supports high-throughput messaging without backpressure