const types = require("../types");
const tables = types.tables;
/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.enrollments).del();
  await knex(tables.enrollments).insert([
    {
      id: 1,
      learner_id: 1,
      course_duration: "9 months",
      fees: "1200",
      learner_address: "45 Newport Road, Carlton, YO6 7QJ.",
      campus_id: 1,
      language_id: 1,
      learning_style_id: 1,
      learning_model: "campus",
    },
    {
      id: 2,
      learner_id: 2,
      course_duration: "9 months",
      fees: "1200",
      campus_id: 6,
      learner_address: "76 Iffley Road, Brochel, IV40 3FQ.",
      language_id: 2,
      learning_style_id: 1,
      learning_model: "online",
    },
    {
      id: 3,
      learner_id: 3,
      course_duration: "6 months",
      fees: "600",
      learner_address: "1 Witney Way, Knockando, AB38 0DU.",
      language_id: 3,
      campus_id: 2,
      learning_style_id: 2,
      learning_model: "campus",
    },
    {
      id: 4,
      learner_id: 4,
      course_duration: "10 months",
      fees: "1200",
      learner_address: "1 Witney Way, Knockando, AB38 0DU.",
      language_id: 4,
      campus_id: 2,
      learning_style_id: 1,
      learning_model: "campus",
    },
    {
      id: 5,
      learner_id: 5,
      course_duration: "9 months",
      fees: "1200",
      learner_address: "1 Witney Way, Knockando, AB38 0DU.",
      language_id: 1,
      campus_id: 2,
      learning_style_id: 1,
      learning_model: "campus",
    },
  ]);
};
