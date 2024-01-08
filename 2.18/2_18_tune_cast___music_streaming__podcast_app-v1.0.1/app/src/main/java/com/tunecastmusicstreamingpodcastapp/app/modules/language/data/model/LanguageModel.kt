package com.tunecastmusicstreamingpodcastapp.app.modules.language.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class LanguageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_language)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSuggested: String? = MyApp.getInstance().resources.getString(R.string.lbl_suggested)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOthers: String? = MyApp.getInstance().resources.getString(R.string.lbl_others)

)
