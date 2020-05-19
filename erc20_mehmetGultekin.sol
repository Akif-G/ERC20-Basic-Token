pragma solidity >=0.4.22 <0.7.0;

/**
 * @title   Standard ERC20 token
 * @author  github.com/Akif-G
 * @notice  Basic ERC20 token implementation, Not recommended for commercial usage.
 * @dev     Implementation of the basic standard Ethereum token, can be used for referance without any guarantee.
 *          https://github.com/Akif-G/ERC20-Basic-Token.git
 */
contract MehmetGultekin{

    mapping (address => uint256) private _balances;

    mapping (address => mapping (address => uint256)) private _allowed;
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    function name() public view returns (string memory){}

    function symbol() public view returns (string memory){}

    function decimals() public view returns (uint8){}

    function totalSupply() public view returns (uint256){}

    function balanceOf(address _owner) public view returns (uint256 balance){}

    function transfer(address _to, uint256 _value) public returns (bool success){}

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success){}

    function approve(address _spender, uint256 _value) public returns (bool success){}

    function allowance(address _owner, address _spender) public view returns (uint256 remaining){}

}