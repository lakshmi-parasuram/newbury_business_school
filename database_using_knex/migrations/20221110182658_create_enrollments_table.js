const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable(tables.enrollments, function (table) {
    table.increments();
    table.integer("learner_id").unsigned().notNullable();

    table.foreign("learner_id").references("id").inTable(tables.learners);
    table.string("course_duration", 64).notNullable();
    table.string("fees", 16).notNullable();
    table.string("learner_address", 255).notNullable();

    table.integer("campus_id").unsigned().notNullable();

    table.foreign("campus_id").references("id").inTable(tables.campuses);

    table.integer("language_id").unsigned().notNullable();

    table.foreign("language_id").references("id").inTable(tables.languages);

    table.integer("learning_style_id").unsigned().notNullable();

    table
      .foreign("learning_style_id")
      .references("id")
      .inTable(tables.learning_styles);

    table.string("learning_model", 16).notNullable();
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable(tables.enrollments);
};
