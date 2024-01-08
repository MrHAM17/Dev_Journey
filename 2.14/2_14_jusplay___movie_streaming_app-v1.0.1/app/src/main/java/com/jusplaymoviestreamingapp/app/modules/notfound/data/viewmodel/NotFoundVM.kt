package com.jusplaymoviestreamingapp.app.modules.notfound.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.notfound.`data`.model.NotFoundModel
import org.koin.core.KoinComponent

class NotFoundVM : ViewModel(), KoinComponent {
  val notFoundModel: MutableLiveData<NotFoundModel> = MutableLiveData(NotFoundModel())

  var navArguments: Bundle? = null
}
