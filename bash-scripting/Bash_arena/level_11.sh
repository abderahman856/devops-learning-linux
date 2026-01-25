DIR="$1"
THRESHOLD="$2"

if [ -z "$DIR" ] || [ -z "$THRESHOLD" ]; then
    echo "Usage: $0 <directory> <threshold_in_mb>"
    exit 1
fi

if [ ! -d "$DIR" ]; then
    echo "Error: Directory $DIR does not exist."
    exit 1
fi

USAGE=$(du -m -s "$DIR" | cut -f1)

echo "Current usage of $DIR: ${USAGE}MB"
echo "Threshold: ${THRESHOLD}MB"

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "⚠️  ALERT: Disk usage exceeded! ${USAGE}MB is greater than ${THRESHOLD}MB."
else
    echo "✅ Disk space is within safe limits."
fi
