const types = require("../types");
const tables = types.tables;

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.learners_classes).del();
  await knex(tables.learners_classes).insert([
    {
      id: 1,
      learner_id: 1,
      class_id: 1,
    },
    {
      id: 2,
      learner_id: 1,
      class_id: 2,
    },
    {
      id: 3,
      learner_id: 2,
      class_id: 1,
    },
    {
      id: 4,
      learner_id: 2,
      class_id: 2,
    },
    {
      id: 5,
      learner_id: 2,
      class_id: 3,
    },
    {
      id: 6,
      learner_id: 1,
      class_id: 3,
    },
    {
      id: 7,
      learner_id: 4,
      class_id: 1,
    },
  ]);
};
