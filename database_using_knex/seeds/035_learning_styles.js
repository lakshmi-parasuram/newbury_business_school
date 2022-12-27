const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.learning_styles).del();
  await knex(tables.learning_styles).insert([
    {
      id: 1,
      name: "Full time",
    },
    { id: 2, name: "Part time" },
  ]);
};
