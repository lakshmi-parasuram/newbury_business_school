const types = require("../types");
const tables = types.tables;

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable(tables.tutor_qualifications, function (table) {
    table.increments();
    table.string("qualification").notNullable();
    table.integer("tutor_id").unsigned().notNullable();

    table.foreign("tutor_id").references("id").inTable(tables.tutors);
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable(tables.tutor_qualifications);
};
// name, salary, type, email address and qualifications
