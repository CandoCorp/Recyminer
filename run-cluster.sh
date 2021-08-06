# Check for git submodules
echo "### Checking for git submodules"

APP="./recyminer_web";
STORE="./recyminer_store";

if [ ! -d "$APP" ] && [ ! -d "$STORE" ]; then
  git submodule update --init --recursive
  git submodule foreach git pull
  git submodule update --remote --merge
fi

echo "### Init Cluster"
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build

