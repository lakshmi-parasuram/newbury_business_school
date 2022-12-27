const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable(tables.learners, function (table) {
    table.increments();
    table.string("first_name").notNullable();
    table.string("last_name").notNullable();
    table.string("email").notNullable();
    table.string("age").notNullable();
    table.string("gender").notNullable();
    table.string("phone_number").notNullable();
    table.integer("learning_style_id").unsigned().notNullable();

    table
      .foreign("learning_style_id")
      .references("id")
      .inTable(tables.learning_styles);
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable(tables.learners);
};
