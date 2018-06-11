const Escrow = artifacts.require('Escrow');

module.exports = (deployer) => {
  const buyerAddress = 0xf17f52151ebef6c7334fad080c5704d77216b732;
  const sellerAddress = 0xc5fdf4076b8f3a5357c5e395ab970b5b54098fef;
  deployer.deploy(Escrow, buyerAddress, sellerAddress);
};
