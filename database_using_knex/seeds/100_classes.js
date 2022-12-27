const types = require("../types");
const tables = types.tables;

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.seed = async function (knex) {
  // Deletes ALL existing entries
  await knex(tables.classes).del();
  await knex(tables.classes).insert([
    {
      id: 1,
      tutor_id: 1,
      delivery_style: "online",
      start_date: "2022-12-22",
      end_date: "2022-12-22",
      size: 7,
      semester_id: 1,
    },
    {
      id: 2,
      tutor_id: 1,
      delivery_style: "in campus",
      start_date: "2022-12-20",
      end_date: "2022-12-20",
      size: 10,
      semester_id: 1,
    },
    {
      id: 3,
      tutor_id: 2,
      delivery_style: "online",
      start_date: "2023-02-20",
      end_date: "2023-02-20",
      size: 6,
      semester_id: 2,
    },
    {
      id: 4,
      tutor_id: 3,
      delivery_style: "in campus",
      start_date: "2023-03-20",
      end_date: "2023-03-20",
      size: 9,
      semester_id: 3,
    },
    {
      id: 5,
      tutor_id: 4,
      delivery_style: "in campus",
      start_date: "2023-05-10",
      end_date: "2023-05-10",
      size: 9,
      semester_id: 4,
    },
  ]);
};
