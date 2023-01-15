const types = require("../types");
const tables = types.tables;

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.semesters).del();
  await knex(tables.semesters).insert([
    { id: 1, name: "Semester 1", type: "FullTime", code: "SF1" },
    { id: 2, name: "Semester 2", type: "FullTime", code: "SF2" },
    { id: 3, name: "Semester 3", type: "FullTime", code: "SF3" },
    { id: 4, name: "Semester 4", type: "FullTime", code: "SF4" },
    { id: 5, name: "Semester 1", type: "PartTime", code: "SP1" },
    { id: 6, name: "Semester 2", type: "PartTime", code: "SP2" },
  ]);
};
// London, Hongkong, Paris, Berlin, Rome, Dubai, Copenhagen, Oslo, Ankara and Cairo
