const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.learners).del();
  await knex(tables.learners).insert([
    {
      id: 1,
      first_name: "Gene",
      last_name: "Mallin",
      email: "gene.mallin@student.com",
      age: 23,
      gender: "Male",
      phone_number: "0123456789",
    },
    {
      id: 2,
      first_name: "Doran",
      last_name: "Schultz",
      email: "doran.schultz@student.com",
      age: 25,
      gender: "Male",
      phone_number: "0456789123",
    },
    {
      id: 3,
      first_name: "Molly",
      last_name: "Mccarthy",
      email: "molly.mccarthy@student.com",
      age: 22,
      gender: "Female",
      phone_number: "0789123456",
    },
    {
      id: 4,
      first_name: "Madison",
      last_name: "Marrow",
      email: "madison.marrow@student.com",
      age: 26,
      gender: "Female",
      phone_number: "0723456891",
    },
    {
      id: 5,
      first_name: "Austin",
      last_name: "Lee",
      email: "austin.lee@student.com",
      age: 28,
      gender: "Male",
      phone_number: "0456891723",
    },
  ]);
};
