const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable(tables.learning_activites, function (table) {
    table.increments();
    table.date("issue_date").notNullable();
    table.string("author").notNullable();
    table.float("marks").notNullable();
    table.integer("learning_resource_id").unsigned().notNullable();

    table
      .foreign("learning_resource_id")
      .references("id")
      .inTable(tables.learning_resources);
    // does learning resources contain learner_id and tutor_id also ?
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable(tables.learning_activites);
};
