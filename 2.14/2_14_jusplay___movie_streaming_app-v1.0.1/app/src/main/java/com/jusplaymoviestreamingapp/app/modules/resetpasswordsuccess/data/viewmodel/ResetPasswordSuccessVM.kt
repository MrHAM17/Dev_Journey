package com.jusplaymoviestreamingapp.app.modules.resetpasswordsuccess.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.resetpasswordsuccess.`data`.model.ResetPasswordSuccessModel
import org.koin.core.KoinComponent

class ResetPasswordSuccessVM : ViewModel(), KoinComponent {
  val resetPasswordSuccessModel: MutableLiveData<ResetPasswordSuccessModel> =
      MutableLiveData(ResetPasswordSuccessModel())

  var navArguments: Bundle? = null
}
