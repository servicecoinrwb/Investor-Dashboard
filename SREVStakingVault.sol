/**
 *Submitted for verification at Arbiscan.io on 2025-05-21
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SREVToken {
    string public name = "Staked Revenue Token";
    string public symbol = "SREV";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    address public stakingVault;

    constructor(address _stakingVault) {
        stakingVault = _stakingVault;
    }

    modifier onlyVault() {
        require(msg.sender == stakingVault, "Not staking vault");
        _;
    }

    function mint(address to, uint256 amount) external onlyVault {
        totalSupply += amount;
        balanceOf[to] += amount;
        emit Transfer(address(0), to, amount);
    }

    function burn(address from, uint256 amount) external onlyVault {
        require(balanceOf[from] >= amount, "Insufficient balance");
        balanceOf[from] -= amount;
        totalSupply -= amount;
        emit Transfer(from, address(0), amount);
    }

    function transfer(address to, uint256 amount) external returns (bool) {
        require(balanceOf[msg.sender] >= amount, "Insufficient balance");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
        emit Transfer(msg.sender, to, amount);
        return true;
    }

    function approve(address spender, uint256 amount) external returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address from, address to, uint256 amount) external returns (bool) {
        require(balanceOf[from] >= amount, "Insufficient balance");
        require(allowance[from][msg.sender] >= amount, "Allowance exceeded");
        allowance[from][msg.sender] -= amount;
        balanceOf[from] -= amount;
        balanceOf[to] += amount;
        emit Transfer(from, to, amount);
        return true;
    }

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

interface IERC20 {
    function transfer(address to, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract SREVStakingVault {
    IERC20 public immutable SRV;
    SREVToken public immutable SREV;

    mapping(address => uint256) public staked;

    constructor(address _srv) {
        SRV = IERC20(_srv);
        SREV = new SREVToken(address(this));
    }

    function stake(uint256 amount) external {
        require(SRV.transferFrom(msg.sender, address(this), amount), "Transfer failed");
        staked[msg.sender] += amount;
        SREV.mint(msg.sender, amount);
    }

    function unstake(uint256 amount) external {
        require(staked[msg.sender] >= amount, "Not enough staked");
        staked[msg.sender] -= amount;
        SREV.burn(msg.sender, amount);
        require(SRV.transfer(msg.sender, amount), "Transfer failed");
    }

    function getSREV() external view returns (address) {
        return address(SREV);
    }
}