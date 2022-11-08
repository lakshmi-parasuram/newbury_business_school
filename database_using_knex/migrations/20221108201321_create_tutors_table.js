/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable("tutors", function (table) {
    table.increments();
    table.string("name").notNullable();
    table.string("salary").notNullable();
    table.string("type").notNullable();
    table.string("email").notNullable();
    table.json("qualifications").notNullable();
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable("tutors");
};
// name, salary, type, email address and qualifications
