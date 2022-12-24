/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex("learning_resource_types").del();
  await knex("learning_resource_types").insert([
    { id: 1, name: "Video" },
    { id: 2, name: "Audio" },
    { id: 3, name: "Powerpoint Presentation" },
    { id: 4, name: "Reading Text" },
  ]);
};
