package com.tikpikshortvideosocialnetworking.app.modules.walkthroughthree.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.walkthroughthree.`data`.model.WalkthroughThreeModel
import org.koin.core.KoinComponent

class WalkthroughThreeVM : ViewModel(), KoinComponent {
  val walkthroughThreeModel: MutableLiveData<WalkthroughThreeModel> =
      MutableLiveData(WalkthroughThreeModel())

  var navArguments: Bundle? = null
}
