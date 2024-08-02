// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract CrossBorderTrade {

    struct TradeAgreement {
        address exporter;
        address importer;
        string product;
        uint quantity;
        uint price;
        string shipmentStatus;
        bool isCompliant;
        bool paymentRecieved;
    }

    mapping (uint => TradeAgreement) public TradeAgreements;
    uint public agreementCounter;

    function createAgreement(
        address _importer,
        string memory _product,
        uint _quantity,
        uint _price
    ) external {
        agreementCounter++;
        TradeAgreements[agreementCounter] = TradeAgreement({
            exporter: msg.sender,
            importer: _importer,
            quantity: _quantity,
            product: _product,
            price: _price,
            shipmentStatus: "In Transit",
            isCompliant: false,
            paymentRecieved: false
        });

        TradeAgreements[agreementCounter].ex
    }

}