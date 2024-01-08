package com.safebankmobilebankingapp.app.modules.minepagecontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.minepagecontainer.`data`.model.MinePageContainerModel
import org.koin.core.KoinComponent

class MinePageContainerVM : ViewModel(), KoinComponent {
  val minePageContainerModel: MutableLiveData<MinePageContainerModel> =
      MutableLiveData(MinePageContainerModel())

  var navArguments: Bundle? = null
}
