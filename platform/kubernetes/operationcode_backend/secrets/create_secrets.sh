#kubectl delete secret backend-secrets
#kubectl create secret generic backend-secrets \
#  --from-file sendgrid_username \
#  --from-file sendgrid_password \
#  --from-file sentry_credentials \
#  --from-file postgres_password \
#  --from-file secret_key_base \
#  --from-file jwt_secret_key

cp secret.yml.tpl secret.yml

for secret in $(grep SECRET secret.yml | cut -d: -f1); do
  secret_env=$(echo $secret | tr /a-z/ /A-Z/)
  secret_value=$(printenv $secret_env)
  secret_value_encoded=$(echo -n $secret_value | base64)
  sed -i '' -e "s/$secret: SECRET/$secret: $secret_value_encoded/" secret.yml
done
