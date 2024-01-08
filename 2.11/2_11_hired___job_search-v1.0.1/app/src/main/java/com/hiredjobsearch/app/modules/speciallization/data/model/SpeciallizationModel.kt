package com.hiredjobsearch.app.modules.speciallization.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class SpeciallizationModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWhatisyourspecialization: String? =
      MyApp.getInstance().resources.getString(R.string.msg_what_is_your_specialization)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor2)

)
