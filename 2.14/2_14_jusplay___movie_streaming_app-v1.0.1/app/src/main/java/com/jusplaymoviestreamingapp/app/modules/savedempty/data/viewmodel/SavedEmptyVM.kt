package com.jusplaymoviestreamingapp.app.modules.savedempty.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.savedempty.`data`.model.SavedEmptyModel
import org.koin.core.KoinComponent

class SavedEmptyVM : ViewModel(), KoinComponent {
  val savedEmptyModel: MutableLiveData<SavedEmptyModel> = MutableLiveData(SavedEmptyModel())

  var navArguments: Bundle? = null
}
