const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.tutors).del();
  await knex(tables.tutors).insert([
    {
      id: 1,
      name: "Lilah Hunt",
      salary: 3000,
      type: "Permanent",
      email: "lilah.hunt@newbury-business-school.com",
      manager_id: 1,
    },
    {
      id: 2,
      name: "Walter Wallace",
      salary: 3200,
      type: "Permanent",
      email: "walter.wallace@newbury-business-school.com",
      tutor_leader_id: 1,
      manager_id: 1,
    },
    {
      id: 3,
      name: "Connor Nicholson",
      salary: 3800,
      type: "Contract",
      email: "connor.nicholson@newbury-business-school.com",
      manager_id: 2,
    },
    {
      id: 4,
      name: "Lola Watts",
      salary: 3100,
      type: "Permanent",
      email: "lola.watts@newbury-business-school.com",
      tutor_leader_id: 1,
      manager_id: 3,
    },
    {
      id: 5,
      name: "Annie Sutton",
      salary: 3000,
      type: "Contract",
      email: "annie.sutton@newbury-business-school.com",
      manager_id: 3,
    },
    {
      id: 6,
      name: "Lila Pearson",
      salary: 3100,
      type: "Permanent",
      email: "lila.pearson@newbury-business-school.com",
      manager_id: 4,
    },
    {
      id: 7,
      name: "Thalia Hunt",
      salary: 3000,
      type: "Permanent",
      email: "thalia.hunt@newbury-business-school.com",
      manager_id: 5,
    },
  ]);
};
