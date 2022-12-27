const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.managers).del();
  await knex(tables.managers).insert([
    {
      id: 1,
      name: "Happy Cobbett",
      email: "happy.cobbett@newbury-business-school.com",
    },
    {
      id: 2,
      name: "Dwayne Robertson",
      email: "dwayne.robertson@newbury-business-school.com",
    },
    {
      id: 3,
      name: "Clarissa Maxwell",
      email: "clarissa.maxwell@newbury-business-school.com",
    },
    {
      id: 4,
      name: "Thalia Frost",
      email: "thalia.frost@newbury-business-school.com",
    },
    {
      id: 5,
      name: "Olivia Andrews",
      email: "olivia.andrews@newbury-business-school.com",
    },
  ]);
};
