const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable(tables.learners_classes, function (table) {
    table.increments();
    table.integer("learner_id").unsigned().notNullable();

    table.foreign("learner_id").references("id").inTable(tables.learners);
    table.integer("class_id").unsigned().notNullable();

    table.foreign("class_id").references("id").inTable(tables.classes);
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable(tables.learners_classes);
};
