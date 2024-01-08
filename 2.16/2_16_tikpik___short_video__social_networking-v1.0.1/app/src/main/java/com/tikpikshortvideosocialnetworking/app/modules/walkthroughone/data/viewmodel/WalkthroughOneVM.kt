package com.tikpikshortvideosocialnetworking.app.modules.walkthroughone.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.walkthroughone.`data`.model.WalkthroughOneModel
import org.koin.core.KoinComponent

class WalkthroughOneVM : ViewModel(), KoinComponent {
  val walkthroughOneModel: MutableLiveData<WalkthroughOneModel> =
      MutableLiveData(WalkthroughOneModel())

  var navArguments: Bundle? = null
}
