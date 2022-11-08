/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex("languages").del();
  await knex("languages").insert([
    { id: 1, name: "English" },
    { id: 2, name: "German" },
    { id: 3, name: "French" },
    { id: 4, name: "Spanish" },
  ]);
};
