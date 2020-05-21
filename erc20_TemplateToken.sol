pragma solidity >=0.4.22 <0.7.0;

/**
 * @title   Standard ERC20 token
 * @author  github.com/Akif-G
 * @notice  different Name, but the same implementation with:: github.com/Akif-G/erc20_MehmetGultekin.sol
 */

contract MehmetGultekinToken{

    mapping (address => uint256) private _balances;
    mapping (address => mapping (address => uint256)) private _allowed;
    uint256 private _totalSupply;
    string private _name;
    string private _symbol;

    constructor(string memory name, string memory symbol, uint256 _total) public {
        assert(_total>0);
       _totalSupply = _total;
       _name = name;
       _symbol = symbol;
       _balances[msg.sender] = _totalSupply;
    }

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    function name() public view returns (string memory){
        return _name;
    }

    function symbol() public view returns (string memory){
        return _symbol;
    }

    function totalSupply() public view returns (uint256){
        return _totalSupply;
    }

    function balanceOf(address _owner) public view returns (uint256 balance){
        return _balances[_owner];
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining){
        return _allowed[_owner][_spender];
    }

    function transfer(address _to, uint256 _value) public returns (bool success){
        assert(_value>0);
        require(_value <= _balances[msg.sender],"Needs a positive input");
        require(_to != address(0),"Provide an address");

        _balances[msg.sender] = _balances[msg.sender] - (_value);
        emit Transfer(msg.sender, _to, _value);
        _balances[_to] = _balances[_to] + (_value);
        return true;
  }

    function transferFrom( address _from, address _to, uint256 _value) public returns (bool){
        require(_value <= _balances[_from],"Not enough token");
        require(_value <= _allowed[_from][msg.sender], "Not allowed by owner");
        require(_to != address(0), "Provide an address");

        _balances[_from] = _balances[_from] - (_value);
        _balances[_to] = _balances[_to] + (_value);
        _allowed[_from][msg.sender] = _allowed[_from][msg.sender] - (_value);
        emit Transfer(_from, _to, _value);
        return true;
    }

    function approve(address _delegate, uint256 _value) public returns (bool success){
        _allowed[msg.sender][_delegate] = _value;
        emit Approval(msg.sender, _delegate, _value);
        return true;
    }

}