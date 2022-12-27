const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.learning_activites).del();
  await knex(tables.learning_activites).insert([
    {
      id: 1,
      issue_date: "2022-10-22",
      author: "Cillian May",
      marks: 90,
      learning_resource_id: 1,
    },
    {
      id: 2,
      issue_date: "2022-11-22",
      author: "Leyla Hughes",
      marks: 85,
      learning_resource_id: 2,
    },
    {
      id: 3,
      issue_date: "2022-12-12",
      author: "Megan Ross",
      marks: 80,
      learning_resource_id: 3,
    },
    {
      id: 4,
      issue_date: "2023-01-09",
      author: "Leon Thompson",
      marks: 80,
      learning_resource_id: 4,
    },
    {
      id: 5,
      issue_date: "2023-01-09",
      author: "Anika Burke",
      marks: 70,
      learning_resource_id: 5,
    },
  ]);
};
