package com.jusplaymoviestreamingapp.app.modules.about.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class AboutModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtGenre: String? = MyApp.getInstance().resources.getString(R.string.lbl_genre)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAdventureComedy: String? =
      MyApp.getInstance().resources.getString(R.string.msg_adventure_comedy2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLanguageText: String? = MyApp.getInstance().resources.getString(R.string.lbl_language_text)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnglish: String? = MyApp.getInstance().resources.getString(R.string.lbl_english)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYear: String? = MyApp.getInstance().resources.getString(R.string.lbl_year)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_2019)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCountry: String? = MyApp.getInstance().resources.getString(R.string.lbl_country)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUnitedStates: String? = MyApp.getInstance().resources.getString(R.string.lbl_united_states)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtActors: String? = MyApp.getInstance().resources.getString(R.string.lbl_actors)

)
