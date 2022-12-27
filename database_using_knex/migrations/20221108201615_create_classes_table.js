const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable(tables.classes, function (table) {
    table.increments();
    table.integer("tutor_id").unsigned().notNullable();

    table.foreign("tutor_id").references("id").inTable(tables.tutors);
    table.string("delivery_style").notNullable();
    table.date("start_date").notNullable();
    table.date("end_date").notNullable();
    table.integer("size").notNullable(); // constraint min 5 and max 20

    table.integer("semester_id").unsigned().notNullable();
    table.foreign("semester_id").references("id").inTable(tables.semesters);
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable(tables.classes);
};
