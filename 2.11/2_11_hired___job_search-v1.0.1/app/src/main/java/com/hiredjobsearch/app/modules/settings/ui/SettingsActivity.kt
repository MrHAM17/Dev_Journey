package com.hiredjobsearch.app.modules.settings.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivitySettingsBinding
import com.hiredjobsearch.app.modules.experiencesetting.ui.ExperienceSettingActivity
import com.hiredjobsearch.app.modules.language.ui.LanguageActivity
import com.hiredjobsearch.app.modules.logoutpopup.ui.LogoutPopupDialog
import com.hiredjobsearch.app.modules.notifications.ui.NotificationsActivity
import com.hiredjobsearch.app.modules.personalinfo.ui.PersonalInfoActivity
import com.hiredjobsearch.app.modules.privacy.ui.PrivacyActivity
import com.hiredjobsearch.app.modules.settings.`data`.viewmodel.SettingsVM
import kotlin.String
import kotlin.Unit

class SettingsActivity : BaseActivity<ActivitySettingsBinding>(R.layout.activity_settings) {
  private val viewModel: SettingsVM by viewModels<SettingsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.settingsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearAccount1.setOnClickListener {
      val destIntent = PersonalInfoActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearPrivacy.setOnClickListener {
      val destIntent = ExperienceSettingActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearNotification.setOnClickListener {
      val destIntent = NotificationsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageImage.setOnClickListener {
      finish()
    }
    binding.linearLegalAndPolicies.setOnClickListener {
      val destIntent = PrivacyActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.txtLargeLabelMedium.setOnClickListener {
      val destFragment = LogoutPopupDialog.getInstance(null)
      destFragment.show(this.supportFragmentManager, LogoutPopupDialog.TAG)
    }
    binding.linearLanguage.setOnClickListener {
      val destIntent = LanguageActivity.getIntent(this, null)
      startActivity(destIntent)
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
