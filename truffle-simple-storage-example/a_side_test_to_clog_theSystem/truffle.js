module.exports = {
  networks: {
    development: {
      host: 'localhost',
      port: 7545,
      from: "0xC5fdf4076b8F3A5357c5E395ab970B5B54098Fef",
      network_id: '*', // Match any network id
      gas: 4700000
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
}
