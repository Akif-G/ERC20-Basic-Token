pragma solidity >=0.4.22 <0.7.0;

/**
 * @title   Standard ERC20 token Exchanger
 * @author  github.com/Akif-G
 * @notice  Basic ERC20 token Exchange mechanism implementation, Not recommended for commercial usage.
 * @dev     Implementation of the basic standard token, can be used for referance without guarranty.
 *          https://github.com/Akif-G/ERC20-Basic-Token.git
 */

///import "erc20_GultekinMehmet.sol";
///import "erc20_MehmetGultekin.sol";
import "erc20_TemplateToken.sol";

contract Exchanger{
    address nftAddress = address(this);
    address payable _wallet = address(uint160(nftAddress));

    function getExchangeAddress()public view returns(address){
        return _wallet;
    }


    function transfer(address from_addrs, address to_addrs, uint256 amount) public returns(bool success){
        MehmetGultekinToken first = MehmetGultekinToken(from_addrs);
        MehmetGultekinToken second = MehmetGultekinToken(to_addrs);
        assert(amount>0);
        require(first.balanceOf(msg.sender)>=amount, "not enough token to Exchange");
        require(second.balanceOf(msg.sender)>=amount, "not enough token to Exchange");
        require(first.allowance(msg.sender,_wallet)>=amount, "tokens are not allowed to use");
        require(second.allowance(msg.sender,_wallet)>=amount, "tokens are not allowed to use");
        
        
        
        return true;

    }
}