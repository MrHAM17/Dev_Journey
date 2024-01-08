package com.ecommerce.app.modules.listcategory.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class ListCategoryModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCategory: String? = MyApp.getInstance().resources.getString(R.string.lbl_category)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShirt: String? = MyApp.getInstance().resources.getString(R.string.lbl_shirt)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBikini: String? = MyApp.getInstance().resources.getString(R.string.lbl_bikini)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDress: String? = MyApp.getInstance().resources.getString(R.string.lbl_dress)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWorkEquipment: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_work_equipment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtManPants: String? = MyApp.getInstance().resources.getString(R.string.lbl_man_pants)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtManShoes: String? = MyApp.getInstance().resources.getString(R.string.lbl_man_shoes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtManUnderwear: String? = MyApp.getInstance().resources.getString(R.string.lbl_man_underwear)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtManTShirt: String? = MyApp.getInstance().resources.getString(R.string.lbl_man_t_shirt)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWomanBag: String? = MyApp.getInstance().resources.getString(R.string.lbl_woman_bag)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWomanPants: String? = MyApp.getInstance().resources.getString(R.string.lbl_woman_pants)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHighHeels: String? = MyApp.getInstance().resources.getString(R.string.lbl_high_heels)

)
