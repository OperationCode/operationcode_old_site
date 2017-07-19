cp secret.yml.tpl secret.yml

for secret in $(grep SECRET secret.yml | cut -d: -f1); do
  secret_env=$(echo $secret | tr /a-z/ /A-Z/)
  secret_value=$(printenv $secret_env)
  secret_value_encoded=$(echo -n $secret_value | base64)
  sed -i '' -e "s/$secret: SECRET/$secret: $secret_value_encoded/" secret.yml
done
