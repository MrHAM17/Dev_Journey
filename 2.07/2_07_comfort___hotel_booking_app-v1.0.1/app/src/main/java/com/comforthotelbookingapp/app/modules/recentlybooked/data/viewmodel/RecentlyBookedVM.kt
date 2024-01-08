package com.comforthotelbookingapp.app.modules.recentlybooked.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.recentlybooked.`data`.model.RecentlyBookedModel
import com.comforthotelbookingapp.app.modules.recentlybooked.`data`.model.RecentlybookedRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class RecentlyBookedVM : ViewModel(), KoinComponent {
  val recentlyBookedModel: MutableLiveData<RecentlyBookedModel> =
      MutableLiveData(RecentlyBookedModel())

  var navArguments: Bundle? = null

  val recentlyBookedList: MutableLiveData<MutableList<RecentlybookedRowModel>> =
      MutableLiveData(mutableListOf())
}
