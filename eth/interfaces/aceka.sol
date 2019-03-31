pragma solidity 0.5.7;

/// @title abstract crypto e-redistribution kindly application interface
interface ACEKA {
    /**
     * @title put obtained amount to participiant accordingly with contract constraints
     * @dev may emit egot
     */
    function get() external;

    /**
     * @title take deposit amount from participiant to contract balance accordingly with contract constraints
     * @dev may emit eput
     */
    function put() external payable;

    /**
     * @title return half of deposit amount to participiant accordingly with contract constraints [note that action shouldn't update participiant ordered list]
     * @dev may emit eleave
     */
    function leave() external;

    /// @title emit on success get action
    event egot(address addr, uint256 amnt);

    /// @title emit on success put action
    event eput(address addr, uint256 amnt);

    /// @title emit on success leave action
    event eleave(address addr, uint256 amnt);
}