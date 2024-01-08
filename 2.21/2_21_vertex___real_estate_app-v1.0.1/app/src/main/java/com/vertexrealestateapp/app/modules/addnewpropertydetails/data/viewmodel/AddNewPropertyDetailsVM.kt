package com.vertexrealestateapp.app.modules.addnewpropertydetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.addnewpropertydetails.`data`.model.AddNewPropertyDetailsModel
import com.vertexrealestateapp.app.modules.addnewpropertydetails.`data`.model.AddnewpropertydetailsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AddNewPropertyDetailsVM : ViewModel(), KoinComponent {
  val addNewPropertyDetailsModel: MutableLiveData<AddNewPropertyDetailsModel> =
      MutableLiveData(AddNewPropertyDetailsModel())

  var navArguments: Bundle? = null

  val addNewPropertyDetailsList: MutableLiveData<MutableList<AddnewpropertydetailsRowModel>> =
      MutableLiveData(mutableListOf())
}
