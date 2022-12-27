const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.tutor_qualifications).del();
  await knex(tables.tutor_qualifications).insert([
    {
      id: 1,
      qualification: "Masters in English",
      tutor_id: 1,
    },
    {
      id: 2,
      qualification: "MA in English",
      tutor_id: 2,
    },
    {
      id: 3,
      qualification: "Masters in Germany",
      tutor_id: 2,
    },
    {
      id: 4,
      qualification: "Masters in French",
      tutor_id: 3,
    },
    {
      id: 5,
      qualification: "Masters in Spanish",
      tutor_id: 4,
    },
    {
      id: 6,
      qualification: "Masters in English",
      tutor_id: 5,
    },
    {
      id: 7,
      qualification: "Masters in French",
      tutor_id: 6,
    },
    {
      id: 8,
      qualification: "Masters in Germany",
      tutor_id: 7,
    },
  ]);
};
