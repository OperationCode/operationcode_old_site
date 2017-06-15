#!/usr/bin/env bash

# Boosted from:
# https://github.com/LittleBayDigital/little-builder/blob/master/bin/lib/_rancher.sh
# Thank you!

function upgrade_service() {
    local environment=$1
    local service=$2
    local image=$3

    ensureVar CATTLE_ACCESS_KEY
    ensureVar CATTLE_SECRET_KEY
    ensureVar RANCHER_API_URL

    local inServiceStrategy=`curl -u "${CATTLE_ACCESS_KEY}:${CATTLE_SECRET_KEY}" \
        -s \
        -X GET \
        -H 'Accept: application/json' \
        -H 'Content-Type: application/json' \
        "${RANCHER_API_URL}/projects/${environment}/services/${service}/" | jq '.upgrade.inServiceStrategy'` &>/dev/null
    local updatedServiceStrategy=`echo ${inServiceStrategy} | jq ".launchConfig.imageUuid=\"docker:${image}\""`
    echo "sending update request"
    curl -u "${CATTLE_ACCESS_KEY}:${CATTLE_SECRET_KEY}" \
        -s \
        -X POST \
        -H 'Accept: application/json' \
        -H 'Content-Type: application/json' \
        -d "{
          \"inServiceStrategy\": ${updatedServiceStrategy}
          }
        }" \
        "${RANCHER_API_URL}/projects/${environment}/services/${service}/?action=upgrade" &>/dev/null
}

function finish_upgrade() {
    local environment=$1
    local service=$2

    echo "waiting for service to upgrade "
      while true; do
      local serviceState=`curl -u "${CATTLE_ACCESS_KEY}:${CATTLE_SECRET_KEY}" \
          -X GET \
          -s \
          -H 'Accept: application/json' \
          -H 'Content-Type: application/json' \
          "${RANCHER_API_URL}/projects/${environment}/services/${service}/" | jq '.state'`

      case $serviceState in
          "\"upgraded\"" )
              echo "completing service upgrade"
              curl -u "${CATTLE_ACCESS_KEY}:${CATTLE_SECRET_KEY}" \
                -s \
                -X POST \
                -H 'Accept: application/json' \
                -H 'Content-Type: application/json' \
                -d '{}' \
                "${RANCHER_API_URL}/projects/${environment}/services/${service}/?action=finishupgrade" &>/dev/null
              break ;;
          "\"upgrading\"" )
              echo -n "."
              sleep 3
              continue ;;
          *)
                die "unexpected upgrade state: $serviceState" ;;
      esac
      done
}

function ensureVar() {
  local varName=$1
  local testVal=''
  eval 'testVal=$'$varName
  [[ -n "$testVal" ]] || die "$varName must be set"
}

function die() {
  echo $1
  exit 1
}

ensureVar ENVIRONMENT_ID
ensureVar SERVICE_ID
ensureVar IMAGE

upgrade_service $ENVIRONMENT_ID $SERVICE_ID $IMAGE
finish_upgrade $ENVIRONMENT_ID $SERVICE_ID
