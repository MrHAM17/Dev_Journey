package com.tunecastmusicstreamingpodcastapp.app.modules.setfingerprint.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.setfingerprint.`data`.model.SetFingerprintModel
import org.koin.core.KoinComponent

class SetFingerprintVM : ViewModel(), KoinComponent {
  val setFingerprintModel: MutableLiveData<SetFingerprintModel> =
      MutableLiveData(SetFingerprintModel())

  var navArguments: Bundle? = null
}
