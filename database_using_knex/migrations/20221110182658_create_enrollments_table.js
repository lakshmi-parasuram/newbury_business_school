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
    table.string("course_duration").notNullable();
    table.string("fees").notNullable();
    table.string("learner_address").notNullable();

    table.integer("campus_id").unsigned().notNullable();

    table.foreign("campus_id").references("id").inTable(tables.campuses);

    table.integer("language_id").unsigned().notNullable();

    table.foreign("language_id").references("id").inTable(tables.languages);

    table.integer("learning_style_id").unsigned().notNullable();

    table
      .foreign("learning_style_id")
      .references("id")
      .inTable(tables.learning_styles);

    table.string("learning_model");
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable(tables.enrollments);
};
