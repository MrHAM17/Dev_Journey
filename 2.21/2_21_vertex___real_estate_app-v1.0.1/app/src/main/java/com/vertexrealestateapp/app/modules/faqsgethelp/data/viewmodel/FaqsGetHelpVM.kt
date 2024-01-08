package com.vertexrealestateapp.app.modules.faqsgethelp.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.faqsgethelp.`data`.model.FaqsGetHelpModel
import org.koin.core.KoinComponent

class FaqsGetHelpVM : ViewModel(), KoinComponent {
  val faqsGetHelpModel: MutableLiveData<FaqsGetHelpModel> = MutableLiveData(FaqsGetHelpModel())

  var navArguments: Bundle? = null
}
