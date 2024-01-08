package com.firstbankdigitalbanking.app.modules.settingsecurity.ui

import androidx.fragment.app.viewModels
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseFragment
import com.firstbankdigitalbanking.app.databinding.FragmentSettingSecurityBinding
import com.firstbankdigitalbanking.app.modules.settingsecurity.`data`.viewmodel.SettingSecurityVM
import kotlin.String
import kotlin.Unit

class SettingSecurityFragment :
    BaseFragment<FragmentSettingSecurityBinding>(R.layout.fragment_setting_security) {
  private val viewModel: SettingSecurityVM by viewModels<SettingSecurityVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.settingSecurityVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SETTING_SECURITY_FRAGMENT"

  }
}
