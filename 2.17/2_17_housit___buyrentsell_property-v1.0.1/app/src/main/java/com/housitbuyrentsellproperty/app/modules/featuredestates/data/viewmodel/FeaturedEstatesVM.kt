package com.housitbuyrentsellproperty.app.modules.featuredestates.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.featuredestates.`data`.model.FeaturedEstatesModel
import com.housitbuyrentsellproperty.app.modules.featuredestates.`data`.model.FeaturedestatesRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class FeaturedEstatesVM : ViewModel(), KoinComponent {
  val featuredEstatesModel: MutableLiveData<FeaturedEstatesModel> =
      MutableLiveData(FeaturedEstatesModel())

  var navArguments: Bundle? = null

  val featuredEstatesList: MutableLiveData<MutableList<FeaturedestatesRowModel>> =
      MutableLiveData(mutableListOf())
}
