#Pull the latest base image from Dockerhub

FROM osixia/openldap

# Set the environment variables

ENV LDAP_ORGANISATION="IBM" \
LDAP_DOMAIN="in.ibm.com" \
LDAP_BASE_DN="dc=ISL,dc=IBM,dc=com"

COPY bootstrap.ldif /container/service/slapd/assets/config/bootstrap/ldif/50-bootstrap.ldif