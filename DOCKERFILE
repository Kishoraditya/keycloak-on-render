# Use Keycloak official image
FROM quay.io/keycloak/keycloak:24.0.3

# Enable production features (important for non-dev use)
ENV KC_DB=dev-mem

# Start with admin setup
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Run in development mode (for testing)
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
