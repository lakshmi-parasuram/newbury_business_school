const types = require("../types");
const tables = types.tables;

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable(tables.tutors, function (table) {
    table.increments();
    table.string("name").notNullable();
    table.string("salary").notNullable();
    table.string("type").notNullable();
    table.string("email").notNullable();
    table.integer("tutor_leader_id").unsigned();

    table.foreign("tutor_leader_id").references("id").inTable(tables.tutors);

    table.integer("manager_id").unsigned().notNullable();

    table.foreign("manager_id").references("id").inTable(tables.managers);
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable(tables.tutors);
};
// name, salary, type, email address and qualifications
