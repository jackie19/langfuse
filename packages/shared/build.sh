

# Generate the prisma-client-for-langfuse-linux
# remove workspace from devDependencies from package.json
# open git bash
# cd /d/work/fork/langfuse/packages/shared/
# sh build.sh

rm -rf ./tmp/*

 docker build -t shared .
 docker create --name shared-ins shared

 docker cp shared-ins:/app/node_modules/prisma-client-for-langfuse-linux ./tmp/
 docker rm shared-ins
 docker image rm shared -f

ls ./tmp
rm -rf  /d/work/prisma-client-for-langfuse-linux/*
cp -r ./tmp/prisma-client-for-langfuse-linux/* /d/work/prisma-client-for-langfuse-linux/
# for windows, change output to x64
# run `npx prisma generate`
