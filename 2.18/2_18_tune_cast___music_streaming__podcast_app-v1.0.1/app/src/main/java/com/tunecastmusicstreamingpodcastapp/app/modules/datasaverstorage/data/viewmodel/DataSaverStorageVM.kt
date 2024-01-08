package com.tunecastmusicstreamingpodcastapp.app.modules.datasaverstorage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.datasaverstorage.`data`.model.DataSaverStorageModel
import org.koin.core.KoinComponent

class DataSaverStorageVM : ViewModel(), KoinComponent {
  val dataSaverStorageModel: MutableLiveData<DataSaverStorageModel> =
      MutableLiveData(DataSaverStorageModel())

  var navArguments: Bundle? = null
}
