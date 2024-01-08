package com.safebankmobilebankingapp.app.modules.settings.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.appcomponents.views.ImagePickerFragmentDialog
import com.safebankmobilebankingapp.app.databinding.ActivitySettingsBinding
import com.safebankmobilebankingapp.app.modules.settings.`data`.viewmodel.SettingsVM
import kotlin.String
import kotlin.Unit

class SettingsActivity : BaseActivity<ActivitySettingsBinding>(R.layout.activity_settings) {
  private val viewModel: SettingsVM by viewModels<SettingsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.settingsVM = viewModel
  }

  override fun setUpClicks(): Unit {


    binding.imageFloatingIcon.setOnClickListener {
      ImagePickerFragmentDialog().show(supportFragmentManager)
      { path ->//TODO HANDLE DATA
      }

    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "SETTINGS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SettingsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
