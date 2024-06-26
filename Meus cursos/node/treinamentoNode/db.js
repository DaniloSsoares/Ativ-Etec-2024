import postgres from 'postgres';
import 'dotenv/config'



let { PGHOST, PGDATABASE, PGUSER, PGPASSWORD, ENDPOINT_ID } = process.env;
const sql = postgres({
    host: PGHOST,
    database: PGDATABASE,
    username: PGUSER,
    password: PGPASSWORD,
    ssl: 'require',
    connection: {
      options: `project=${ENDPOINT_ID}`,
    },
  });

export {sql}

