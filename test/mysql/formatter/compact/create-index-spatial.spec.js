const ava = require('ava');
const fs = require('fs');
const path = require('path');

const Parser = require('../../../../lib');
const expect = require('./expect/create-index-spatial.json');

let sql = fs.readFileSync(path.join(__dirname, 'sql', 'create-table.sql')).toString();
sql += fs.readFileSync(path.join(__dirname, 'sql', 'create-index-spatial.sql')).toString();

ava('Compact formatter: Should create spatial index.', t => {
  const parser = new Parser('mysql');
  parser.feed(sql);

  const json = parser.toCompactJson(parser.results);
  // for some reason t.deepEqual hangs process
  t.is(JSON.stringify(json), JSON.stringify(expect));
});
