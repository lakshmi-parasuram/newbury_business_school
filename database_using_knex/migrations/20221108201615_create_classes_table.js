/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable("classes", function (table) {
    table.increments();
    table.integer("tutor_id").unsigned().notNullable();

    table.foreign("tutor_id").references("id").inTable("tutors");
    table.string("term").notNullable();
    table.date("start_date").notNullable();
    table.date("end_date").notNullable();
    table.integer("size").notNullable(); // constraint min and max
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {
  return knex.schema.dropTable("classes");
};
