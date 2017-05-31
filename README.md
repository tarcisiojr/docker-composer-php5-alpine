# DOCKER-COMPOSER-PHP5-ALPINE


## Usage

```bash
docker run -it --rm \
    -e COMPOSER_CACHE_DIR=/.composer \
    -e LOCAL_USER_ID=$(id -u $USER) \
    -v $(pwd):/app \
    -v ~/.ssh:/home/user/.ssh \    
    -v /tmp/composer:/.composer  
    tarcisiojunior/docker-composer-php5-alpine \
    install
```