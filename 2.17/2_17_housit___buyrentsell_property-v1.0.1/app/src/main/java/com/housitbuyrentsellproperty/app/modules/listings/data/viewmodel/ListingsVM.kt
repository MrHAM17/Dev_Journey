package com.housitbuyrentsellproperty.app.modules.listings.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.listings.`data`.model.ListingsModel
import com.housitbuyrentsellproperty.app.modules.listings.`data`.model.ListingsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ListingsVM : ViewModel(), KoinComponent {
  val listingsModel: MutableLiveData<ListingsModel> = MutableLiveData(ListingsModel())

  var navArguments: Bundle? = null

  val listingsList: MutableLiveData<MutableList<ListingsRowModel>> =
      MutableLiveData(mutableListOf())
}
