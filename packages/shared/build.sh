

# Generate the prisma-client-for-langfuse-linux

 docker build -t shared .
 docker create --name shared-ins shared

 docker cp shared-ins:/app/node_modules/prisma-client-for-langfuse-linux ./tmp/
 docker rm shared-ins
 docker image rm shared -f


# for windows, change output to x64
# run `npx prisma generate`
