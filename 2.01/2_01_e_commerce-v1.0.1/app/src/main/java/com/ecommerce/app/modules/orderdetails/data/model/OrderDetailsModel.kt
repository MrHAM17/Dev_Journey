package com.ecommerce.app.modules.orderdetails.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class OrderDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOrderDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_order_details)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPacking: String? = MyApp.getInstance().resources.getString(R.string.lbl_packing)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShipping: String? = MyApp.getInstance().resources.getString(R.string.lbl_shipping)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArriving: String? = MyApp.getInstance().resources.getString(R.string.lbl_arriving)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSuccess: String? = MyApp.getInstance().resources.getString(R.string.lbl_success)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProduct: String? = MyApp.getInstance().resources.getString(R.string.lbl_product)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShippingDetails: String? =
      MyApp.getInstance().resources.getString(R.string.msg_shipping_details)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDateShipping: String? = MyApp.getInstance().resources.getString(R.string.lbl_date_shipping)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDateValue: String? = MyApp.getInstance().resources.getString(R.string.msg_january_16_2020)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShipping1: String? = MyApp.getInstance().resources.getString(R.string.lbl_shipping)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPOSReggular: String? = MyApp.getInstance().resources.getString(R.string.lbl_pos_reggular)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNoResi: String? = MyApp.getInstance().resources.getString(R.string.lbl_no_resi)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtResiNumber: String? = MyApp.getInstance().resources.getString(R.string.lbl_000192848573)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddress: String? = MyApp.getInstance().resources.getString(R.string.lbl_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddress1: String? = MyApp.getInstance().resources.getString(R.string.msg_2727_new_owerri)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPaymentDetails: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_payment_details)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtItems: String? = MyApp.getInstance().resources.getString(R.string.lbl_items_3)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_598_86)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShipping2: String? = MyApp.getInstance().resources.getString(R.string.lbl_shipping)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_40_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtImportCharges: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_import_charges)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_128_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotalPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_total_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice3: String? = MyApp.getInstance().resources.getString(R.string.lbl_766_86)

)
