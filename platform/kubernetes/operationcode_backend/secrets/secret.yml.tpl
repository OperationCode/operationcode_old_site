apiVersion: v1
kind: Secret
metadata:
  name: backend-secrets
type: Opaque
data:
  airtable_add_user_base_id: SECRET
  airtable_add_user_table_name: SECRET
  airtable_api_key: SECRET
  jwt_secret_key: SECRET
  postgres_password: SECRET
  secret_key_base: SECRET
  sendgrid_password: SECRET
  sendgrid_username: SECRET
  sendgrid_api_key: SECRET
  sentry_credentials: SECRET
  publishable_key: SECRET
  slack_subdomain: SECRET
  slack_token: SECRET
  stripe_publishable_key: SECRET
  stripe_secret_key: SECRET
  discourse_sso_secret: SECRET
