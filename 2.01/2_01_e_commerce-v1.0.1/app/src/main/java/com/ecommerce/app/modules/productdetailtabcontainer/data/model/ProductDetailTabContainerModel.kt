package com.ecommerce.app.modules.productdetailtabcontainer.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class ProductDetailTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNikeAirMaxRea: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nike_air_max_2702)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProductName: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nike_air_zoom_pegasus)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_299_43)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectSize: String? = MyApp.getInstance().resources.getString(R.string.lbl_select_size)

)
