# Database built using KnexJS

Create a new database in MySql

```
> create database newbury_business_school;
```

Update the user and password details in `knexfile.js`

Install `knex` cli globally

```
$ npm install -g knex
```

Install dependencies

```
$ npm install
```

To run migration

```
$ npm run migrate
```

To seed the data

```
$ npm run seed
```

To do further changes, to add a new table use knex migration

```
$ knex migrate:make migration_name
```

To cleanup and start over

```
$ knex migrate:rollback
```
