# Check for git submodules
echo "### Checking for git submodules"

APP="./recyminer_web";
STORE="./recyminer_store";
APP_VENDOR="./recyminer_web/vendor";
STORE_VENDOR="./recyminer_store/vendor";

if [ ! -d "$APP" ] && [ ! -d "$STORE" ]; then
  git submodule update --init --recursive
  git submodule foreach git pull
  git submodule update --remote --merge
fi

if [ ! -d "$APP_VENDOR" ]; then
  docker run --rm -it --volume $(pwd)/recyminer_web:/app prooph/composer:7.4 install --ignore-platform-reqs
fi
if [ ! -d "$STORE_VENDOR" ]; then
  docker run --rm -it --volume $(pwd)/recyminer_store:/app prooph/composer:7.4 install --ignore-platform-reqs
fi

#sudo chown -R $USER:$USER ./recyminer_web
#sudo chown -R $USER:$USER ./recyminer_store


echo "### Init Cluster"
docker-compose -f docker-compose.yml up -d --build

