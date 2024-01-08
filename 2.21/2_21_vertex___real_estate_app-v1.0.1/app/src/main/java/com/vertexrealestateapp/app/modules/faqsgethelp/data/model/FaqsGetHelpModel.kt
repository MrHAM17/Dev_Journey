package com.vertexrealestateapp.app.modules.faqsgethelp.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class FaqsGetHelpModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_faqs)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFrequentlyAsked: String? =
      MyApp.getInstance().resources.getString(R.string.msg_frequently_asked)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHowDoesRelaxWork: String? =
      MyApp.getInstance().resources.getString(R.string.msg_how_does_relax_work)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWhoCanBuyAHome: String? =
      MyApp.getInstance().resources.getString(R.string.msg_who_can_buy_a_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHowCanISellMy: String? =
      MyApp.getInstance().resources.getString(R.string.msg_how_can_i_sell_my)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHowDoIContact: String? =
      MyApp.getInstance().resources.getString(R.string.msg_how_do_i_contact)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShowAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_show_all)

)
