package com.hiredjobsearch.app.modules.language.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class LanguageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLanguage: String? = MyApp.getInstance().resources.getString(R.string.lbl_language)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSuggestedLanguages: String? =
      MyApp.getInstance().resources.getString(R.string.msg_suggested_languages)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOtherLanguages: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_other_languages)

)
