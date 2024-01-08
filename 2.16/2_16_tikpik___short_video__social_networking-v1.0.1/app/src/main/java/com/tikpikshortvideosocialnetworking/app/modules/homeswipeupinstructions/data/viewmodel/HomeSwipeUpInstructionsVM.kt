package com.tikpikshortvideosocialnetworking.app.modules.homeswipeupinstructions.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.homeswipeupinstructions.`data`.model.HomeSwipeUpInstructionsModel
import org.koin.core.KoinComponent

class HomeSwipeUpInstructionsVM : ViewModel(), KoinComponent {
  val homeSwipeUpInstructionsModel: MutableLiveData<HomeSwipeUpInstructionsModel> =
      MutableLiveData(HomeSwipeUpInstructionsModel())

  var navArguments: Bundle? = null
}
