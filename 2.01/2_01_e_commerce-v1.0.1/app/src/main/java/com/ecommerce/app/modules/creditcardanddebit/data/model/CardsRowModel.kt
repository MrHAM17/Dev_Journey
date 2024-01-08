package com.ecommerce.app.modules.creditcardanddebit.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class CardsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDebitCardNumber: String? = MyApp.getInstance().resources.getString(R.string.msg_6326_9124)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCARDHOLDER: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_holder)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDominicOvo: String? = MyApp.getInstance().resources.getString(R.string.lbl_dominic_ovo)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCARDSAVE: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_save)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDebitCardExpiry: String? = MyApp.getInstance().resources.getString(R.string.lbl_06_24)

)
