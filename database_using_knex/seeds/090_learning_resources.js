const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.learning_resources).del();
  await knex(tables.learning_resources).insert([
    {
      id: 1,
      language_id: 1,
      learning_resource_type_id: 1,
      duration: "4 hours",
      author: "Marco Walker",
      date_of_issue: "2022-10-22",
    },
    {
      id: 2,
      language_id: 1,
      learning_resource_type_id: 2,
      duration: "3.5 hours",
      author: "Seth Davis",
      date_of_issue: "2022-11-12",
    },
    {
      id: 3,
      language_id: 2,
      learning_resource_type_id: 3,
      duration: "3.0 hours",
      author: "Rosalie Shaw",
      date_of_issue: "2022-12-20",
    },
    {
      id: 4,
      language_id: 4,
      learning_resource_type_id: 4,
      duration: "4.5 hours",
      author: "Rosalie Shaw",
      date_of_issue: "2022-12-20",
    },
    {
      id: 5,
      language_id: 1,
      learning_resource_type_id: 1,
      duration: "4.2 hours",
      author: "Anika Burke",
      date_of_issue: "2022-11-20",
    },
  ]);
};
