package com.blogapp.app.modules.termsandconditions.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.blogapp.app.modules.termsandconditions.`data`.model.TermsAndConditionsModel
import org.koin.core.KoinComponent

class TermsAndConditionsVM : ViewModel(), KoinComponent {
  val termsAndConditionsModel: MutableLiveData<TermsAndConditionsModel> =
      MutableLiveData(TermsAndConditionsModel())

  var navArguments: Bundle? = null
}
