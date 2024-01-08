package com.safebankmobilebankingapp.app.modules.confirmation.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivityConfirmationBinding
import com.safebankmobilebankingapp.app.modules.confirmation.`data`.viewmodel.ConfirmationVM
import com.safebankmobilebankingapp.app.modules.minepagecontainer.ui.MinePageContainerActivity
import kotlin.String
import kotlin.Unit

class ConfirmationActivity :
    BaseActivity<ActivityConfirmationBinding>(R.layout.activity_confirmation) {
  private val viewModel: ConfirmationVM by viewModels<ConfirmationVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.confirmationVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnBackHome.setOnClickListener {
      val destIntent = MinePageContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "CONFIRMATION_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ConfirmationActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
