package com.vertexrealestateapp.app.modules.myhomeempty.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.myhomeempty.`data`.model.MyHomeEmptyModel
import org.koin.core.KoinComponent

class MyHomeEmptyVM : ViewModel(), KoinComponent {
  val myHomeEmptyModel: MutableLiveData<MyHomeEmptyModel> = MutableLiveData(MyHomeEmptyModel())

  var navArguments: Bundle? = null
}
