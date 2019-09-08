module.exports = async (context) => {
  let message = `hello world called ${new Date().getUTCDate()}`;

  return Promise.resolve({
    body: message,
    status: 200
  });
};
