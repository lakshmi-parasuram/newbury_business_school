const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable(tables.learning_resources, function (table) {
    table.increments();
    table.integer("language_id").unsigned().notNullable();

    table.foreign("language_id").references("id").inTable(tables.languages);

    table.integer("learning_resource_type_id").unsigned().notNullable();

    table
      .foreign("learning_resource_type_id")
      .references("id")
      .inTable(tables.learning_resource_types);

    table.string("duration", 32).notNullable();
    table.string("author", 64).notNullable();
    table.date("date_of_issue").notNullable();
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable(tables.learning_resources);
};
