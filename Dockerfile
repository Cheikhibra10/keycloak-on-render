FROM quay.io/keycloak/keycloak:24.0.3

ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://dpg-d21qnfvgi27c73e8un9g-a/pedagogie_db7
ENV KC_DB_USERNAME=pedagogie_db7_user
ENV KC_DB_PASSWORD=XfmWDdbkiXcBQhtbX8hQxDxfTQIXBtyD
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin123

ENV KC_CACHE=local
ENV KC_HOSTNAME=keycloak-on-render-lh67.onrender.com
ENV KC_PROXY=edge

# IMPORTANT : build en mode production
RUN /opt/keycloak/bin/kc.sh build


ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--http-enabled=true", "--http-port=8080", "--hostname-strict=false", "--hostname-strict-https=false"]
