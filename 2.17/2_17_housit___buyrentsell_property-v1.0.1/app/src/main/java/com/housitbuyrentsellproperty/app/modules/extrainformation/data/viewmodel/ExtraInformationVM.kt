package com.housitbuyrentsellproperty.app.modules.extrainformation.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.extrainformation.`data`.model.ExtraInformationModel
import com.housitbuyrentsellproperty.app.modules.extrainformation.`data`.model.Layout3RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ExtraInformationVM : ViewModel(), KoinComponent {
  val extraInformationModel: MutableLiveData<ExtraInformationModel> =
      MutableLiveData(ExtraInformationModel())

  var navArguments: Bundle? = null

  val layoutList: MutableLiveData<MutableList<Layout3RowModel>> = MutableLiveData(mutableListOf())
}
