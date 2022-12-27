const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.languages).del();
  await knex(tables.languages).insert([
    { id: 1, name: "English" },
    { id: 2, name: "German" },
    { id: 3, name: "French" },
    { id: 4, name: "Spanish" },
  ]);
};
