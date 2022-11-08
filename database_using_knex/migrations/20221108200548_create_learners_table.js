/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function (knex) {
  return knex.schema.createTable("learners", function (table) {
    table.increments();
    table.string("first_name").notNullable();
    table.string("last_name").notNullable();
    table.string("email").notNullable();
    table.string("age").notNullable();
    table.string("gender").notNullable();
    table.string("learning_style").notNullable(); // enum?
    table.string("phone_number").notNullable();
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function (knex) {};
