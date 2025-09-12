const request = require('supertest');  // ✅ FIXED
const buildapp = require('../../app');
const UserRepo = require('../../repos/user-repo');
const pool = require('../../pool');

beforeAll(() => {
  return pool.connect({
    host: 'localhost',
    port: 5432,
    database: 'socialnetworking-test',
    user: 'postgres',
    password: 'Siya@2002'
  });
});

afterAll(() => {
  return pool.close();
});

it('create a user', async () => {
  const startingCount = await UserRepo.count();
  expect(startingCount).toEqual(0);

  await request(buildapp())       // ✅ now using supertest
    .post('/users')
    .send({ username: 'testuser', bio: 'testbio' })
    .expect(200);

  const finishCount = await UserRepo.count();
  expect(finishCount - startingCount).toEqual(1);
});
