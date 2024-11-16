

# Generate the prisma-client-for-langfuse-linux
# remove workspace from devDependencies from package.json
# open git bash
# cd /d/work/fork/langfuse/packages/shared/
# sh build.sh

rm -rf ./tmp

 docker build -t shared .
 docker create --name shared-ins shared

 docker cp shared-ins:/app/node_modules/prisma-client-for-langfuse-linux ./tmp/
 docker rm shared-ins
 docker image rm shared -f

ls ./tmp
cp -r ./tmp/* /d/work/prisma-client-for-langfuse-linux/


# for windows, change output to x64
# run `pnpm install` in root
# comment out schema.prisma for windows
# run `npx prisma generate`
# copy

#npx prisma generate
#cp -r ./node_modules/prisma-client-for-langfuse-x64/* /d/work/prisma-client-for-langfuse-x64/
