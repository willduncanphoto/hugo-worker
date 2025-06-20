hugo new site . –force

chmod +x build.sh

npx wrangler deploy --env staging
npx wrangler deploy --env production