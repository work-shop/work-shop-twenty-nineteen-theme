#!/bin/bash

#npm run build

source ./.env

# Uploads
#scp -P $KINSTA_PORT -r ../../uploads $KINSTA_USER@$KINSTA_IP:./public/wp-content/

# Custom Theme
scp -P $KINSTA_STAGING_PORT -r ../../themes/custom $KINSTA_STAGING_USER@$KINSTA_STAGING_IP:./public/wp-content/themes

# Bundles only
#scp -P $KINSTA_STAGING_PORT -r ./bundles $KINSTA_STAGING_USER@$KINSTA_STAGING_IP:./public/wp-content/themes/custom

# Plugins and must use plugins
#scp -P $KINSTA_STAGING_PORT -r ../../plugins $KINSTA_STAGING_USER@$KINSTA_STAGING_IP:./public/wp-content/
#scp -P $KINSTA_STAGING_PORT -r ../../mu-plugins $KINSTA_STAGING_USER@$KINSTA_STAGING_IP:./public/wp-content/

#specific plugins
#scp -P $KINSTA_STAGING_PORT -r ../../plugins/wc-product-customer-list-premium $KINSTA_STAGING_USER@$KINSTA_STAGING_IP:./public/wp-content/plugins

#specific files
#scp -P $KINSTA_STAGING_PORT ./functions/post-types/classes/class-nam-class.php $KINSTA_STAGING_USER@$KINSTA_STAGING_IP:./public/wp-content/themes/custom/functions/post-types/classes/

#functions.php
#scp -P $KINSTA_STAGING_PORT ./functions.php $KINSTA_STAGING_USER@$KINSTA_STAGING_IP:./public/wp-content/themes/custom/


curl -L https://$STAGING_SITE_URL/kinsta-clear-cache-all/ 