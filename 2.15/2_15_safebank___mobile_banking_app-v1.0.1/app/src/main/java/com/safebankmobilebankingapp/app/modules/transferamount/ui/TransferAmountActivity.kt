package com.safebankmobilebankingapp.app.modules.transferamount.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivityTransferAmountBinding
import com.safebankmobilebankingapp.app.modules.confirmation.ui.ConfirmationActivity
import com.safebankmobilebankingapp.app.modules.transferamount.`data`.viewmodel.TransferAmountVM
import kotlin.String
import kotlin.Unit

class TransferAmountActivity :
    BaseActivity<ActivityTransferAmountBinding>(R.layout.activity_transfer_amount) {
  private val viewModel: TransferAmountVM by viewModels<TransferAmountVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.transferAmountVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSendMoney.setOnClickListener {
      val destIntent = ConfirmationActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "TRANSFER_AMOUNT_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, TransferAmountActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
