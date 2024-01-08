package com.vertexrealestateapp.app.modules.addnewpropertyreasonsellinghome.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.addnewpropertyreasonsellinghome.`data`.model.AddNewPropertyReasonSellingHomeModel
import com.vertexrealestateapp.app.modules.addnewpropertyreasonsellinghome.`data`.model.AddnewpropertyreasonsellinghomRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AddNewPropertyReasonSellingHomeVM : ViewModel(), KoinComponent {
  val addNewPropertyReasonSellingHomeModel: MutableLiveData<AddNewPropertyReasonSellingHomeModel> =
      MutableLiveData(AddNewPropertyReasonSellingHomeModel())

  var navArguments: Bundle? = null

  val addNewPropertyReasonsellinghomList:
      MutableLiveData<MutableList<AddnewpropertyreasonsellinghomRowModel>> =
      MutableLiveData(mutableListOf())
}
