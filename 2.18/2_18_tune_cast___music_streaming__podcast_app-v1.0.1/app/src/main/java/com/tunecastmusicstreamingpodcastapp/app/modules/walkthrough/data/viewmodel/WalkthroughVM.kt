package com.tunecastmusicstreamingpodcastapp.app.modules.walkthrough.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.walkthrough.`data`.model.WalkthroughModel
import org.koin.core.KoinComponent

class WalkthroughVM : ViewModel(), KoinComponent {
  val walkthroughModel: MutableLiveData<WalkthroughModel> = MutableLiveData(WalkthroughModel())

  var navArguments: Bundle? = null
}
