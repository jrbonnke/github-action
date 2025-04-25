LOG_ID=$(uuidgen)
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:&SZ")
ACTION=$1
STATUS=$2
USER=$3
ENVIRONMENT=$4
COMMENT=$5

aws dynamodb put-item \
  --table-name terraform-activity-logs \
  --item "{
    \"LogID\": {\"S\": \"$LOG_ID\"},
    \"Timestamp\": {\"S\": \"$TIMESTAMP\"},
    \"Action\": {\"S\": \"$ACTION\"},
    \"Status\": {\"S\": \"$STATUS\"},
    \"User\": {\"S\": \"$USER\"},
    \"Environment\": {\"S\": \"$ENVIRONMENT\"},
    \"Comment\": {\"S\": \"$COMMENT\"}
  }" \
  --region us-east-1


