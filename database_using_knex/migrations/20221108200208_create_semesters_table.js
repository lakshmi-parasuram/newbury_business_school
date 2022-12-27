const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable(tables.semesters, function (table) {
    table.increments();
    table.string("name").notNullable();
    table.string("type").notNullable();
    table.string("code").notNullable();
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable(tables.semesters);
};
