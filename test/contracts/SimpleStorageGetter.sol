pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;

contract SimpleStorageGetter {
    struct SimpleStruct {
        uint256 valueA;
        bool valueB;
    }

    uint256 internal _uint256;
    bool internal _bool;
    SimpleStruct internal _SimpleStruct;
    mapping (uint256 => uint256) _uint256Map;
    mapping (uint256 => mapping (uint256 => uint256)) _uint256NestedMap;

    function getUint256()
        public
        view
        returns (
            uint256 _out
        )
    {
        return _uint256;
    }

    function getBool()
        public
        view
        returns (
            bool _out
        )
    {
        return _bool;
    }

    function getSimpleStruct()
        public
        view
        returns (
            SimpleStruct memory _out
        )
    {
        return _SimpleStruct;
    }

    function getUint256MapValue(
        uint256 _key
    )
        public
        view
        returns (
            uint256 _out
        )
    {
        return _uint256Map[_key];
    }

    function getNestedUint256MapValue(
        uint256 _keyA,
        uint256 _keyB
    )
        public
        view
        returns (
            uint256 _out
        )
    {
        return _uint256NestedMap[_keyA][_keyB];
    }
}