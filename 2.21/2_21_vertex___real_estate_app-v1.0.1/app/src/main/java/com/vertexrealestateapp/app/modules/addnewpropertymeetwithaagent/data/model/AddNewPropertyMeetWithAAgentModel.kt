package com.vertexrealestateapp.app.modules.addnewpropertymeetwithaagent.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewPropertyMeetWithAAgentModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_new_property)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMeetWithAAgent: String? =
      MyApp.getInstance().resources.getString(R.string.msg_meet_with_a_agent)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPropertyAddress: String? =
      MyApp.getInstance().resources.getString(R.string.msg_property_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWoodlandSt: String? = MyApp.getInstance().resources.getString(R.string.msg_woodland_st_105)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJanuary: String? = MyApp.getInstance().resources.getString(R.string.lbl_january)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPickATime: String? = MyApp.getInstance().resources.getString(R.string.lbl_pick_a_time)

)
