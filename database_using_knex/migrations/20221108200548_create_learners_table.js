const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable(tables.learners, function (table) {
    table.increments();
    table.string("first_name", 64).notNullable();
    table.string("last_name", 64).notNullable();
    table.string("email", 128).notNullable();
    table.integer("age").notNullable();
    table.string("gender", 16).notNullable();
    table.string("phone_number", 32).notNullable();
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable(tables.learners);
};
