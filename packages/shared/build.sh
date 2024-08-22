

# Generate the prisma-client-for-langfuse-linux
# remove workspace from devDependencies from package.json
# open git bash
# cd /d/work/fork/langfuse/packages/shared/
# sh build.sh


 docker build -t shared .
 docker create --name shared-ins shared

 docker cp shared-ins:/app/node_modules/prisma-client-for-langfuse-linux ./tmp/
 docker rm shared-ins
 docker image rm shared -f


# for windows, change output to x64
# run `npx prisma generate`
