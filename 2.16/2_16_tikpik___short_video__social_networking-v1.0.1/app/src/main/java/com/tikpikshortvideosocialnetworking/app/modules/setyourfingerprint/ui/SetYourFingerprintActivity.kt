package com.tikpikshortvideosocialnetworking.app.modules.setyourfingerprint.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivitySetYourFingerprintBinding
import com.tikpikshortvideosocialnetworking.app.modules.accountsetupsuccessful.ui.AccountSetupSuccessfulDialog
import com.tikpikshortvideosocialnetworking.app.modules.homecontainer.ui.HomeContainerActivity
import com.tikpikshortvideosocialnetworking.app.modules.setyourfingerprint.`data`.viewmodel.SetYourFingerprintVM
import kotlin.String
import kotlin.Unit

class SetYourFingerprintActivity :
    BaseActivity<ActivitySetYourFingerprintBinding>(R.layout.activity_set_your_fingerprint) {
  private val viewModel: SetYourFingerprintVM by viewModels<SetYourFingerprintVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.setYourFingerprintVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSkip.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnContinue.setOnClickListener {
      val destFragment = AccountSetupSuccessfulDialog.getInstance(null)
      destFragment.show(this.supportFragmentManager, AccountSetupSuccessfulDialog.TAG)
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "SET_YOUR_FINGERPRINT_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SetYourFingerprintActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
