
var poc = artifacts.require("PoC");

module.exports = function (_deployer) {
  // Use deployer to state migration tasks.
  _deployer.deploy(poc);
};
