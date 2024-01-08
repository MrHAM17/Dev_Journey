package com.shopsieecommerceapp.app.modules.searchtabcontainer.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class SearchTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtExploreStories: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_explore_stories)

)
