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
        bool paymentReceived;
    }

    mapping(uint => TradeAgreement) public TradeAgreements;
    uint public agreementcounter;   //agremment id

    function createAgreement (          //exporter is creating the contract so he is msg.sender
        address _importer,
        string memory _product,
        uint _quantity,
        uint _price
    ) external {
        //agree created
        agreementcounter++;
        TradeAgreements[agreementcounter] = TradeAgreement({
            exporter: msg.sender,
            importer: _importer,
            product: _product,
            quantity: _quantity,
            price: _price,
            shipmentStatus : "In Transit",
            isCompliant: false,
            paymentReceived: false
        });
    }
    //exporter can update the shipment status
    //check if who is updating this function should be exporter of that agreement only
    function updateShipmentStatus(uint _agreementId, string memory _newStatus) external {
        require(msg.sender == TradeAgreements[_agreementId].exporter, "Not Authorised to perform this action.");
        TradeAgreements[_agreementId].shipmentStatus = _newStatus;
    }

    function updateCompliantStatus(uint _agreementid, bool _isCompliant) external {
        require(
            msg.sender == TradeAgreements[_agreementid].importer,
            "Not Authorised to perform this action."
        );
        TradeAgreements[_agreementid].isCompliant = _isCompliant;
    }

    function makePayment(uint _agreementId) external payable {
        require(
            msg.sender == TradeAgreements[_agreementId].importer,
            "Not authorised to perform this action"
        );
        require(msg.value == TradeAgreements[_agreementId].price,
        "Payment amount is incorrect");
        require(TradeAgreements[_agreementId].paymentReceived == false,
        "Payment has already been done");
        TradeAgreements[_agreementId].paymentReceived = true;
    }

    function getTradeAgreementDetails(uint _agreementId) public view returns(
        address exporter,
        address importer,
        string memory product,
        uint quantity,
        uint price,
        string memory shipmentStatus,
        bool isCompliant,
        bool paymentReceived

    )
    {
        TradeAgreement memory temp_agreement = TradeAgreements[_agreementId];
        return(
            temp_agreement.exporter,
            temp_agreement.importer,
            temp_agreement.product,
            temp_agreement.quantity,
            temp_agreement.price,
            temp_agreement.shipmentStatus,
            temp_agreement.isCompliant,
            temp_agreement.paymentReceived
        );
    }

    
}