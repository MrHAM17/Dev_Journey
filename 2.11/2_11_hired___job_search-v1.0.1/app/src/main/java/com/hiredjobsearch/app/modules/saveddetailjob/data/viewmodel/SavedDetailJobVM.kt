package com.hiredjobsearch.app.modules.saveddetailjob.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.saveddetailjob.`data`.model.SavedDetailJobModel
import org.koin.core.KoinComponent

class SavedDetailJobVM : ViewModel(), KoinComponent {
  val savedDetailJobModel: MutableLiveData<SavedDetailJobModel> =
      MutableLiveData(SavedDetailJobModel())

  var navArguments: Bundle? = null
}
