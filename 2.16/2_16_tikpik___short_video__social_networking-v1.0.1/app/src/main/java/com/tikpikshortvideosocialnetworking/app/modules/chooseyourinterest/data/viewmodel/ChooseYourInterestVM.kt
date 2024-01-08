package com.tikpikshortvideosocialnetworking.app.modules.chooseyourinterest.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.chooseyourinterest.`data`.model.ChooseYourInterestModel
import org.koin.core.KoinComponent

class ChooseYourInterestVM : ViewModel(), KoinComponent {
  val chooseYourInterestModel: MutableLiveData<ChooseYourInterestModel> =
      MutableLiveData(ChooseYourInterestModel())

  var navArguments: Bundle? = null
}
