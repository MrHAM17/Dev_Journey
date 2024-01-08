package com.housitbuyrentsellproperty.app.modules.editform.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.editform.`data`.model.EditFormModel
import com.housitbuyrentsellproperty.app.modules.editform.`data`.model.Layout5RowModel
import com.housitbuyrentsellproperty.app.modules.editform.`data`.model.ShapeRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class EditFormVM : ViewModel(), KoinComponent {
  val editFormModel: MutableLiveData<EditFormModel> = MutableLiveData(EditFormModel())

  var navArguments: Bundle? = null

  val shapeList: MutableLiveData<MutableList<ShapeRowModel>> = MutableLiveData(mutableListOf())

  val layoutList: MutableLiveData<MutableList<Layout5RowModel>> = MutableLiveData(mutableListOf())
}
