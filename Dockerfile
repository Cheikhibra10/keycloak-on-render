FROM quay.io/keycloak/keycloak:24.0.3

ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://dpg-d21qnfvgi27c73e8un9g-a/pedagogie_db7
ENV KC_DB_USERNAME=pedagogie_db7_user
ENV KC_DB_PASSWORD=XfmWDdbkiXcBQhtbX8hQxDxfTQIXBtyD

# Pour la production : mode non développement
ENV KC_HOSTNAME=ton-domaine-keycloak.onrender.com
ENV KC_PROXY=edge

# Mode production (non-dev)
RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]
