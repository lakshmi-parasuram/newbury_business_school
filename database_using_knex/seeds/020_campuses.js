/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex("campuses").del();
  await knex("campuses").insert([
    { id: 1, name: "London" },
    { id: 2, name: "Hongkong" },
    { id: 3, name: "Paris" },
    { id: 4, name: "Berlin" },
    { id: 5, name: "Rome" },
    { id: 6, name: "Dubai" },
    { id: 7, name: "Copenhagen" },
    { id: 8, name: "Oslo" },
    { id: 9, name: "Ankara" },
    { id: 10, name: "Cairo" },
  ]);
};
// London, Hongkong, Paris, Berlin, Rome, Dubai, Copenhagen, Oslo, Ankara and Cairo
