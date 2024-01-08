package com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.`data`.model.DatalistRowModel
import com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.`data`.model.RealEstatesListByCategoryModel
import com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.`data`.model.RealestateslistbycategoryRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class RealEstatesListByCategoryVM : ViewModel(), KoinComponent {
  val realEstatesListByCategoryModel: MutableLiveData<RealEstatesListByCategoryModel> =
      MutableLiveData(RealEstatesListByCategoryModel())

  var navArguments: Bundle? = null

  val dataListList: MutableLiveData<MutableList<DatalistRowModel>> =
      MutableLiveData(mutableListOf())

  val realEstatesListbyCategoryList: MutableLiveData<MutableList<RealestateslistbycategoryRowModel>>
      = MutableLiveData(mutableListOf())
}
