class AddOrderRequest {
  List<Sells>? sells;

  AddOrderRequest({this.sells});

  AddOrderRequest.fromJson(Map<String, dynamic> json) {
    if (json['sells'] != null) {
      sells = <Sells>[];
      json['sells'].forEach((v) {
        sells!.add(Sells.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sells != null) {
      data['sells'] = sells!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sells {
  int? locationId;
  int? contactId;
  dynamic invoiceNo;
  String? status;
  dynamic saleNote;
  dynamic commissionAgent;
  dynamic shippingDetails;
  dynamic shippingAddress;
  dynamic shippingStatus;
  dynamic deliveredTo;
  int? shippingCharges;
  dynamic payTermNumber;
  dynamic payTermType;
  dynamic recurInterval;
  dynamic recurIntervalType;
  dynamic subscriptionRepeatOn;
  dynamic recurRepetitions;
  int? rpRedeemed;
  int? rpRedeemedAmount;
  dynamic resTableId;
  dynamic resWaiterId;
  dynamic typesOfServiceId;
  dynamic packingCharge;
  dynamic packingChargeType;
  List<Products>? products;
  int? discountAmount;
  String? discountType;
  int? taxRateId;

  Sells(
      {this.locationId,
      this.contactId,
      this.invoiceNo,
      this.status,
      this.saleNote,
      this.commissionAgent,
      this.shippingDetails,
      this.shippingAddress,
      this.shippingStatus,
      this.deliveredTo,
      this.shippingCharges,
      this.payTermNumber,
      this.payTermType,
      this.recurInterval,
      this.recurIntervalType,
      this.subscriptionRepeatOn,
      this.recurRepetitions,
      this.rpRedeemed,
      this.rpRedeemedAmount,
      this.resTableId,
      this.resWaiterId,
      this.typesOfServiceId,
      this.packingCharge,
      this.packingChargeType,
      this.products,
      this.discountAmount,
      this.discountType,
      this.taxRateId});

  Sells.fromJson(Map<String, dynamic> json) {
    locationId = json['location_id'];
    contactId = json['contact_id'];
    invoiceNo = json['invoice_no'];
    status = json['status'];
    saleNote = json['sale_note'];
    commissionAgent = json['commission_agent'];
    shippingDetails = json['shipping_details'];
    shippingAddress = json['shipping_address'];
    shippingStatus = json['shipping_status'];
    deliveredTo = json['delivered_to'];
    shippingCharges = json['shipping_charges'];
    payTermNumber = json['pay_term_number'];
    payTermType = json['pay_term_type'];
    recurInterval = json['recur_interval'];
    recurIntervalType = json['recur_interval_type'];
    subscriptionRepeatOn = json['subscription_repeat_on'];
    recurRepetitions = json['recur_repetitions'];
    rpRedeemed = json['rp_redeemed'];
    rpRedeemedAmount = json['rp_redeemed_amount'];
    resTableId = json['res_table_id'];
    resWaiterId = json['res_waiter_id'];
    typesOfServiceId = json['types_of_service_id'];
    packingCharge = json['packing_charge'];
    packingChargeType = json['packing_charge_type'];
    if (json['products'] != null) {
      products = <Products>[];
      if (json['products'] != null) {
        products = <Products>[];
        json['products'].forEach((v) {
          products!.add(Products.fromJson(v));
        });
      }
    }
    discountAmount = json['discount_amount'];
    discountType = json['discount_type'];
    taxRateId = json['tax_rate_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['location_id'] = locationId;
    data['contact_id'] = contactId;
    data['invoice_no'] = invoiceNo;
    data['status'] = status;
    data['sale_note'] = saleNote;
    data['commission_agent'] = commissionAgent;
    data['shipping_details'] = shippingDetails;
    data['shipping_address'] = shippingAddress;
    data['shipping_status'] = shippingStatus;
    data['delivered_to'] = deliveredTo;
    data['shipping_charges'] = shippingCharges;
    data['pay_term_number'] = payTermNumber;
    data['pay_term_type'] = payTermType;
    data['recur_interval'] = recurInterval;
    data['recur_interval_type'] = recurIntervalType;
    data['subscription_repeat_on'] = subscriptionRepeatOn;
    data['recur_repetitions'] = recurRepetitions;
    data['rp_redeemed'] = rpRedeemed;
    data['rp_redeemed_amount'] = rpRedeemedAmount;
    data['res_table_id'] = resTableId;
    data['res_waiter_id'] = resWaiterId;
    data['types_of_service_id'] = typesOfServiceId;
    data['packing_charge'] = packingCharge;
    data['packing_charge_type'] = packingChargeType;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    data['discount_amount'] = discountAmount;
    data['discount_type'] = discountType;
    data['tax_rate_id'] = taxRateId;
    return data;
  }
}

class Products {
  int? productId;
  int? variationId;
  int? discountAmount;
  String? discountType;
  dynamic subUnitId;
  dynamic taxRateId;
  int? quantity;
  String? note;
  List<int>? modifier;
  List<double>? modifierPrice;
  List<int>? modifierQuantity;
  List<int>? modifierSetId;
  double? unitPriceIncTax;

  Products({
    this.productId,
    this.variationId,
    this.discountAmount,
    this.discountType,
    this.subUnitId,
    this.taxRateId,
    this.quantity,
    this.note,
    this.modifier,
    this.modifierPrice,
    this.modifierQuantity,
    this.modifierSetId,
    this.unitPriceIncTax,
  });

  Products.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    variationId = json['variation_id'];
    discountAmount = json['discount_amount'];
    discountType = json['discount_type'];
    subUnitId = json['sub_unit_id'];
    taxRateId = json['tax_rate_id'];
    quantity = json['quantity'];
    note = json['note'];
    modifier = json['modifier'].cast<int>();
    modifierPrice = json['modifier_price'].cast<double>();
    modifierQuantity = json['modifier_quantity'].cast<int>();
    modifierSetId = json['modifier_set_id'].cast<int>();
    unitPriceIncTax = json['unit_price_inc_tax'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_id'] = productId;
    data['variation_id'] = variationId;
    data['discount_amount'] = discountAmount;
    data['discount_type'] = discountType;
    data['sub_unit_id'] = subUnitId;
    data['tax_rate_id'] = taxRateId;
    data['quantity'] = quantity;
    data['note'] = note;
    data['modifier'] = modifier;
    data['modifier_price'] = modifierPrice;
    data['modifier_quantity'] = modifierQuantity;
    data['modifier_set_id'] = modifierSetId;
    data['unit_price_inc_tax'] = unitPriceIncTax;
    return data;
  }
}
