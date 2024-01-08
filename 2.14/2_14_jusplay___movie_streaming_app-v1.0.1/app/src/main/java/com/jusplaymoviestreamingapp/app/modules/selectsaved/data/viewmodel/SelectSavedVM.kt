package com.jusplaymoviestreamingapp.app.modules.selectsaved.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.selectsaved.`data`.model.SelectSavedModel
import com.jusplaymoviestreamingapp.app.modules.selectsaved.`data`.model.SelectsavedRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SelectSavedVM : ViewModel(), KoinComponent {
  val selectSavedModel: MutableLiveData<SelectSavedModel> = MutableLiveData(SelectSavedModel())

  var navArguments: Bundle? = null

  val selectSavedList: MutableLiveData<MutableList<SelectsavedRowModel>> =
      MutableLiveData(mutableListOf())
}
