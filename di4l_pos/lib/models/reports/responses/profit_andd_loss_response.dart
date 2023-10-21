// To parse this JSON data, do
//
//     final profitAndLossResponse = profitAndLossResponseFromJson(jsonString);

import 'dart:convert';

class ProfitAndLossResponse {
  Data? data;

  ProfitAndLossResponse({
    this.data,
  });

  ProfitAndLossResponse copyWith({
    Data? data,
  }) =>
      ProfitAndLossResponse(
        data: data ?? this.data,
      );

  factory ProfitAndLossResponse.fromRawJson(String str) =>
      ProfitAndLossResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProfitAndLossResponse.fromJson(Map<String, dynamic> json) =>
      ProfitAndLossResponse(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Data {
  dynamic totalPurchaseShippingCharge;
  dynamic totalSellShippingCharge;
  dynamic totalPurchaseAdditionalExpense;
  dynamic totalSellAdditionalExpense;
  dynamic totalTransferShippingCharges;
  dynamic openingStock;
  dynamic closingStock;
  dynamic totalPurchase;
  dynamic totalPurchaseDiscount;
  dynamic totalPurchaseReturn;
  dynamic totalSell;
  dynamic totalSellDiscount;
  dynamic totalSellReturnDiscount;
  dynamic totalSellReturn;
  dynamic totalSellRoundOff;
  dynamic totalExpense;
  dynamic totalAdjustment;
  dynamic totalRecovered;
  dynamic totalRewardAmount;
  List<LeftSideModuleDatum>? leftSideModuleData;
  List<dynamic>? rightSideModuleData;
  dynamic netProfit;
  dynamic grossProfit;
  List<dynamic>? totalSellBySubtype;

  Data({
    this.totalPurchaseShippingCharge,
    this.totalSellShippingCharge,
    this.totalPurchaseAdditionalExpense,
    this.totalSellAdditionalExpense,
    this.totalTransferShippingCharges,
    this.openingStock,
    this.closingStock,
    this.totalPurchase,
    this.totalPurchaseDiscount,
    this.totalPurchaseReturn,
    this.totalSell,
    this.totalSellDiscount,
    this.totalSellReturnDiscount,
    this.totalSellReturn,
    this.totalSellRoundOff,
    this.totalExpense,
    this.totalAdjustment,
    this.totalRecovered,
    this.totalRewardAmount,
    this.leftSideModuleData,
    this.rightSideModuleData,
    this.netProfit,
    this.grossProfit,
    this.totalSellBySubtype,
  });

  Data copyWith({
    dynamic totalPurchaseShippingCharge,
    dynamic totalSellShippingCharge,
    dynamic totalPurchaseAdditionalExpense,
    dynamic totalSellAdditionalExpense,
    dynamic totalTransferShippingCharges,
    dynamic openingStock,
    dynamic closingStock,
    dynamic totalPurchase,
    dynamic totalPurchaseDiscount,
    dynamic totalPurchaseReturn,
    dynamic totalSell,
    dynamic totalSellDiscount,
    dynamic totalSellReturnDiscount,
    dynamic totalSellReturn,
    dynamic totalSellRoundOff,
    dynamic totalExpense,
    dynamic totalAdjustment,
    dynamic totalRecovered,
    dynamic totalRewardAmount,
    List<LeftSideModuleDatum>? leftSideModuleData,
    List<dynamic>? rightSideModuleData,
    dynamic netProfit,
    dynamic grossProfit,
    List<dynamic>? totalSellBySubtype,
  }) =>
      Data(
        totalPurchaseShippingCharge:
            totalPurchaseShippingCharge ?? this.totalPurchaseShippingCharge,
        totalSellShippingCharge:
            totalSellShippingCharge ?? this.totalSellShippingCharge,
        totalPurchaseAdditionalExpense: totalPurchaseAdditionalExpense ??
            this.totalPurchaseAdditionalExpense,
        totalSellAdditionalExpense:
            totalSellAdditionalExpense ?? this.totalSellAdditionalExpense,
        totalTransferShippingCharges:
            totalTransferShippingCharges ?? this.totalTransferShippingCharges,
        openingStock: openingStock ?? this.openingStock,
        closingStock: closingStock ?? this.closingStock,
        totalPurchase: totalPurchase ?? this.totalPurchase,
        totalPurchaseDiscount:
            totalPurchaseDiscount ?? this.totalPurchaseDiscount,
        totalPurchaseReturn: totalPurchaseReturn ?? this.totalPurchaseReturn,
        totalSell: totalSell ?? this.totalSell,
        totalSellDiscount: totalSellDiscount ?? this.totalSellDiscount,
        totalSellReturnDiscount:
            totalSellReturnDiscount ?? this.totalSellReturnDiscount,
        totalSellReturn: totalSellReturn ?? this.totalSellReturn,
        totalSellRoundOff: totalSellRoundOff ?? this.totalSellRoundOff,
        totalExpense: totalExpense ?? this.totalExpense,
        totalAdjustment: totalAdjustment ?? this.totalAdjustment,
        totalRecovered: totalRecovered ?? this.totalRecovered,
        totalRewardAmount: totalRewardAmount ?? this.totalRewardAmount,
        leftSideModuleData: leftSideModuleData ?? this.leftSideModuleData,
        rightSideModuleData: rightSideModuleData ?? this.rightSideModuleData,
        netProfit: netProfit ?? this.netProfit,
        grossProfit: grossProfit ?? this.grossProfit,
        totalSellBySubtype: totalSellBySubtype ?? this.totalSellBySubtype,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalPurchaseShippingCharge: json["total_purchase_shipping_charge"],
        totalSellShippingCharge: json["total_sell_shipping_charge"],
        totalPurchaseAdditionalExpense:
            json["total_purchase_additional_expense"],
        totalSellAdditionalExpense: json["total_sell_additional_expense"],
        totalTransferShippingCharges: json["total_transfer_shipping_charges"],
        openingStock: json["opening_stock"],
        closingStock: json["closing_stock"],
        totalPurchase: json["total_purchase"],
        totalPurchaseDiscount: json["total_purchase_discount"],
        totalPurchaseReturn: json["total_purchase_return"],
        totalSell: json["total_sell"],
        totalSellDiscount: json["total_sell_discount"],
        totalSellReturnDiscount: json["total_sell_return_discount"],
        totalSellReturn: json["total_sell_return"],
        totalSellRoundOff: json["total_sell_round_off"],
        totalExpense: json["total_expense"],
        totalAdjustment: json["total_adjustment"],
        totalRecovered: json["total_recovered"],
        totalRewardAmount: json["total_reward_amount"],
        leftSideModuleData: json["left_side_module_data"] == null
            ? []
            : List<LeftSideModuleDatum>.from(json["left_side_module_data"]!
                .map((x) => LeftSideModuleDatum.fromJson(x))),
        rightSideModuleData: json["right_side_module_data"] == null
            ? []
            : List<dynamic>.from(json["right_side_module_data"]!.map((x) => x)),
        netProfit: json["net_profit"],
        grossProfit: json["gross_profit"],
        totalSellBySubtype: json["total_sell_by_subtype"] == null
            ? []
            : List<dynamic>.from(json["total_sell_by_subtype"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "total_purchase_shipping_charge": totalPurchaseShippingCharge,
        "total_sell_shipping_charge": totalSellShippingCharge,
        "total_purchase_additional_expense": totalPurchaseAdditionalExpense,
        "total_sell_additional_expense": totalSellAdditionalExpense,
        "total_transfer_shipping_charges": totalTransferShippingCharges,
        "opening_stock": openingStock,
        "closing_stock": closingStock,
        "total_purchase": totalPurchase,
        "total_purchase_discount": totalPurchaseDiscount,
        "total_purchase_return": totalPurchaseReturn,
        "total_sell": totalSell,
        "total_sell_discount": totalSellDiscount,
        "total_sell_return_discount": totalSellReturnDiscount,
        "total_sell_return": totalSellReturn,
        "total_sell_round_off": totalSellRoundOff,
        "total_expense": totalExpense,
        "total_adjustment": totalAdjustment,
        "total_recovered": totalRecovered,
        "total_reward_amount": totalRewardAmount,
        "left_side_module_data": leftSideModuleData == null
            ? []
            : List<dynamic>.from(leftSideModuleData!.map((x) => x.toJson())),
        "right_side_module_data": rightSideModuleData == null
            ? []
            : List<dynamic>.from(rightSideModuleData!.map((x) => x)),
        "net_profit": netProfit,
        "gross_profit": grossProfit,
        "total_sell_by_subtype": totalSellBySubtype == null
            ? []
            : List<dynamic>.from(totalSellBySubtype!.map((x) => x)),
      };
}

class LeftSideModuleDatum {
  dynamic value;
  String? label;
  bool? addToNetProfit;

  LeftSideModuleDatum({
    this.value,
    this.label,
    this.addToNetProfit,
  });

  LeftSideModuleDatum copyWith({
    dynamic value,
    String? label,
    bool? addToNetProfit,
  }) =>
      LeftSideModuleDatum(
        value: value ?? this.value,
        label: label ?? this.label,
        addToNetProfit: addToNetProfit ?? this.addToNetProfit,
      );

  factory LeftSideModuleDatum.fromRawJson(String str) =>
      LeftSideModuleDatum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LeftSideModuleDatum.fromJson(Map<String, dynamic> json) =>
      LeftSideModuleDatum(
        value: json["value"],
        label: json["label"],
        addToNetProfit: json["add_to_net_profit"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "label": label,
        "add_to_net_profit": addToNetProfit,
      };
}
