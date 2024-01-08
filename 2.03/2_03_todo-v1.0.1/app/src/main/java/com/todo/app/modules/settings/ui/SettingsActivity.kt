package com.todo.app.modules.settings.ui

import androidx.activity.viewModels
import com.todo.app.R
import com.todo.app.appcomponents.base.BaseActivity
import com.todo.app.databinding.ActivitySettingsBinding
import com.todo.app.modules.settings.`data`.viewmodel.SettingsVM
import kotlin.String
import kotlin.Unit

class SettingsActivity : BaseActivity<ActivitySettingsBinding>(R.layout.activity_settings) {
  private val viewModel: SettingsVM by viewModels<SettingsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.settingsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      // TODO please, add your navigation code here
      finish()
    }
  }

  companion object {
    const val TAG: String = "SETTINGS_ACTIVITY"

  }
}
