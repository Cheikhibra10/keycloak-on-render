FROM quay.io/keycloak/keycloak:24.0.4

ENV KC_HEALTH_ENABLED=true

# Active le mode "production"
ENV KC_FEATURES=token-exchange,admin2
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

CMD ["start", "--optimized"]
