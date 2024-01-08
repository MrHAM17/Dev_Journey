package com.firstbankdigitalbanking.app.modules.settingpreferencetabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.firstbankdigitalbanking.app.modules.settingpreferencetabcontainer.`data`.model.SettingPreferenceTabContainerModel
import org.koin.core.KoinComponent

class SettingPreferenceTabContainerVM : ViewModel(), KoinComponent {
  val settingPreferenceTabContainerModel: MutableLiveData<SettingPreferenceTabContainerModel> =
      MutableLiveData(SettingPreferenceTabContainerModel())

  var navArguments: Bundle? = null
}
