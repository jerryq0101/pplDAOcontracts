// Not secure for real use!!! especially as a treasury (Access is public for transfer contract, dont steal my rinkeby ether)

pragma solidity ^0.8.10;

contract ReceiveEther {

    // Function to receive Ether. msg.data must be empty
    receive() external payable {}

    // Fallback function is called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function transfer(address payable wallet, uint amount) public {
        wallet.transfer(amount);
    }
}
