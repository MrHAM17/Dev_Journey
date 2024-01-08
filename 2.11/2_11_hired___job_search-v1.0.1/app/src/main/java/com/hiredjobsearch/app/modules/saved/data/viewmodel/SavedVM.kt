package com.hiredjobsearch.app.modules.saved.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.saved.`data`.model.SavedModel
import com.hiredjobsearch.app.modules.saved.`data`.model.SavedRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SavedVM : ViewModel(), KoinComponent {
  val savedModel: MutableLiveData<SavedModel> = MutableLiveData(SavedModel())

  var navArguments: Bundle? = null

  val savedList: MutableLiveData<MutableList<SavedRowModel>> = MutableLiveData(mutableListOf())
}
