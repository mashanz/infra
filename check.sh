INFRA_MIN_REQ_STATUS=0
echo ""
echo "Checking requirements.."
echo ""


# check number of CPU core
if [ "$(nproc)" -gt 1 ]; then
    echo "✅ Minimum 2 Core CPU      $(nproc) Core"
    INFRA_MIN_REQ_STATUS=$(($INFRA_MIN_REQ_STATUS + 1))
else
    echo "❌ Minimum 2 Core CPU"
fi

# check RAM space minimum 4GB
if [ "$(free -m | awk '/^Mem:/{print $2}')" -gt 4000 ]; then
    echo "✅ Minimum 4 GB RAM        $(($(free -m | awk '/^Mem:/{print $2}') / 1000)) GB"
    INFRA_MIN_REQ_STATUS=$(($INFRA_MIN_REQ_STATUS + 1))
else
    echo "❌ Minimum 4 GB RAM"
fi

# check storage space minimum 20GB
if [ "$(df -h | awk '/\/$/{print $4}' | sed 's/G//')" -gt 20 ]; then
    echo "✅ Minimum 20 GB Storage   $(df -h | awk '/\/$/{print $4}' | sed 's/G//') GB"
    INFRA_MIN_REQ_STATUS=$(($INFRA_MIN_REQ_STATUS + 1))
else
    echo "❌ Minimum 20 GB Storage"
fi

if [ "$(which docker)" != "" ]; then
    echo "✅ docker                  $(which docker)"
    INFRA_MIN_REQ_STATUS=$(($INFRA_MIN_REQ_STATUS + 1))
else
    echo "❌ docker"
fi

if [ "$(which docker-compose)" != "" ]; then
    echo "✅ docker-compose          $(which docker-compose)"
    INFRA_MIN_REQ_STATUS=$(($INFRA_MIN_REQ_STATUS + 1))
else
    echo "❌ docker-Compose"
fi

if [ "$(which curl)" != "" ]; then
    echo "✅ curl                    $(which curl)"
    INFRA_MIN_REQ_STATUS=$(($INFRA_MIN_REQ_STATUS + 1))
else
    echo "❌ curl"
fi

if [ "$(which wget)" != "" ]; then
    INFRA_MIN_REQ_STATUS=$(($INFRA_MIN_REQ_STATUS + 1))
    echo "✅ wget                    $(which wget)"
else
    echo "❌ wget"
fi

echo ""

if [ "$(echo $INFRA_MIN_REQ_STATUS)" != "7" ]; then
    echo "❌ Some requirements are not available"
else
    echo "✅ All requirements are available"
fi

echo ""
