apiVersion: v1
kind: Secret
metadata:
  name: town-crier-secrets
type: Opaque
data:
  airtable_api_key: SECRET
  airtable_base: SECRET
  slack_token: SECRET
