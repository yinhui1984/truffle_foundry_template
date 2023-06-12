const PoC = artifacts.require("PoC");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("PoC", function (accounts) {
  console.log("Running test cases...");

  it("my test", async function () {
    let instance = await PoC.deployed();

    assert(instance != null, "instance should not be null")
    // let tx = await debug(instance.hack());
    // console.log(tx)
    // assert(tx !== null, "Transaction should not be null");

  });

});