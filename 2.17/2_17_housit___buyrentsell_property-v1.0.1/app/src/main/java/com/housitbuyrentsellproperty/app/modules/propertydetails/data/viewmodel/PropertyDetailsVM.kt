package com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.Layout6RowModel
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.Layout7RowModel
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.PropertyDetailsModel
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.PropertydetailsRowModel
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.ViewallreviewsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PropertyDetailsVM : ViewModel(), KoinComponent {
  val propertyDetailsModel: MutableLiveData<PropertyDetailsModel> =
      MutableLiveData(PropertyDetailsModel())

  var navArguments: Bundle? = null

  val layoutList: MutableLiveData<MutableList<Layout6RowModel>> = MutableLiveData(mutableListOf())

  val layout1List: MutableLiveData<MutableList<Layout7RowModel>> = MutableLiveData(mutableListOf())

  val viewAllReviewsList: MutableLiveData<MutableList<ViewallreviewsRowModel>> =
      MutableLiveData(mutableListOf())

  val propertyDetailsList: MutableLiveData<MutableList<PropertydetailsRowModel>> =
      MutableLiveData(mutableListOf())
}
