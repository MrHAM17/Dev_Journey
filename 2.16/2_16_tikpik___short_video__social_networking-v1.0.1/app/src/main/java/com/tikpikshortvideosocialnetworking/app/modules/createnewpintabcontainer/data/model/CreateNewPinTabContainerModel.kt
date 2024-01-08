package com.tikpikshortvideosocialnetworking.app.modules.createnewpintabcontainer.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class CreateNewPinTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_create_new_pin)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddAPINNumber: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_a_pin_number)

)
