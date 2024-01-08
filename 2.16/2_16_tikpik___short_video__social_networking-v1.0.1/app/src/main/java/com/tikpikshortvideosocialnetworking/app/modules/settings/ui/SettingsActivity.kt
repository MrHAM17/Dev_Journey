package com.tikpikshortvideosocialnetworking.app.modules.settings.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivitySettingsBinding
import com.tikpikshortvideosocialnetworking.app.modules.language.ui.LanguageActivity
import com.tikpikshortvideosocialnetworking.app.modules.logoutmodal.ui.LogoutModalBottomsheet
import com.tikpikshortvideosocialnetworking.app.modules.manageaccounts.ui.ManageAccountsActivity
import com.tikpikshortvideosocialnetworking.app.modules.privacy.ui.PrivacyActivity
import com.tikpikshortvideosocialnetworking.app.modules.privacypolicy.ui.PrivacyPolicyActivity
import com.tikpikshortvideosocialnetworking.app.modules.qrcode.ui.QrCodeActivity
import com.tikpikshortvideosocialnetworking.app.modules.security.ui.SecurityActivity
import com.tikpikshortvideosocialnetworking.app.modules.settings.`data`.viewmodel.SettingsVM
import kotlin.String
import kotlin.Unit

class SettingsActivity : BaseActivity<ActivitySettingsBinding>(R.layout.activity_settings) {
  private val viewModel: SettingsVM by viewModels<SettingsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.settingsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearAutoLayoutHorizontal2.setOnClickListener {
      val destIntent = SecurityActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearAutoLayoutHorizontal4.setOnClickListener {
      val destIntent = LanguageActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
    binding.linearAutoLayoutHorizontal3.setOnClickListener {
      val destIntent = QrCodeActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearAutoLayoutHorizontal13.setOnClickListener {
      val destIntent = PrivacyPolicyActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearAutoLayoutHorizontal1.setOnClickListener {
      val destIntent = PrivacyActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearAutoLayoutHorizontal.setOnClickListener {
      val destIntent = ManageAccountsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearFortyNine.setOnClickListener {
      val destFragment = LogoutModalBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, LogoutModalBottomsheet.TAG)
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
