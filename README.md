# Buy Planes

A simple ecommerce site where you can buy and sell planes of any kind.

## How to start the project

The project is built with nest and prisma a couple of pre requisite is to have PostgreSQL insalled
You will also have to go into psql and create the database
You can do this using the `psql` command in you terminal after you have configured PostgreSQL

```
CREATE DATABASE buy_planes;
```

this command should create the database.

you are going to run this command to copy over the .env vars

```
cp ./.example.env ./.env
```

in the `.env` file you are going to want to update the connection string so that it will connect to you database
updating the `USERNAME`, and `PASSWORD` sections should do the trick, unless you did something different in the PostgreSQL installation

next you will want to install all the packagees, and the NestCLI

```
npm install && npm insatll -g @nestjs/cli
```

After that is all said and done you will want to run the migrations 

```
npx prisma migrate dev
```

this should be able to start the server if you run 

```
npm run start:dev
```

then viola it should all be running. 

## TODOs

- [] Auth
- [] Role based Auth
- [] Build the frontend
- [] Jest Unit testing
- [] Swagger Documentation
- [] Docker for Postgres
