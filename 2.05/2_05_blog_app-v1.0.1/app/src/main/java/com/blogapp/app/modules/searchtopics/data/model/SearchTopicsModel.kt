package com.blogapp.app.modules.searchtopics.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchTopicsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtExploreTopics: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_explore_topics)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBooks: String? = MyApp.getInstance().resources.getString(R.string.lbl_books)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFiction: String? = MyApp.getInstance().resources.getString(R.string.lbl_fiction)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtComics: String? = MyApp.getInstance().resources.getString(R.string.lbl_comics)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArt: String? = MyApp.getInstance().resources.getString(R.string.lbl_art)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVisualDesign: String? = MyApp.getInstance().resources.getString(R.string.lbl_visual_design)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTechnology: String? = MyApp.getInstance().resources.getString(R.string.lbl_technology)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtScience: String? = MyApp.getInstance().resources.getString(R.string.lbl_science)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBusiness: String? = MyApp.getInstance().resources.getString(R.string.lbl_business)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPsychology: String? = MyApp.getInstance().resources.getString(R.string.lbl_psychology)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCreativity: String? = MyApp.getInstance().resources.getString(R.string.lbl_creativity)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEducation: String? = MyApp.getInstance().resources.getString(R.string.lbl_education)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFeminism: String? = MyApp.getInstance().resources.getString(R.string.lbl_feminism)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtArtificialIntelligence: String? =
      MyApp.getInstance().resources.getString(R.string.msg_artificial_intelligence)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHealth: String? = MyApp.getInstance().resources.getString(R.string.lbl_health)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDesign: String? = MyApp.getInstance().resources.getString(R.string.lbl_design)

)
