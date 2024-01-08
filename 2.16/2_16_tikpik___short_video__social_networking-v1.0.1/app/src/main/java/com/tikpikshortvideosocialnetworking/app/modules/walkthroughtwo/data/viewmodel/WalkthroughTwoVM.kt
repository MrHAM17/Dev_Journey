package com.tikpikshortvideosocialnetworking.app.modules.walkthroughtwo.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.walkthroughtwo.`data`.model.WalkthroughTwoModel
import org.koin.core.KoinComponent

class WalkthroughTwoVM : ViewModel(), KoinComponent {
  val walkthroughTwoModel: MutableLiveData<WalkthroughTwoModel> =
      MutableLiveData(WalkthroughTwoModel())

  var navArguments: Bundle? = null
}
