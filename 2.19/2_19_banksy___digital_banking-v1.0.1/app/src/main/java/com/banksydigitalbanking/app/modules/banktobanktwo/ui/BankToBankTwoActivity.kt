package com.banksydigitalbanking.app.modules.banktobanktwo.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityBankToBankTwoBinding
import com.banksydigitalbanking.app.modules.banktobankthree.ui.BankToBankThreeActivity
import com.banksydigitalbanking.app.modules.banktobanktwo.`data`.viewmodel.BankToBankTwoVM
import kotlin.String
import kotlin.Unit

class BankToBankTwoActivity :
    BaseActivity<ActivityBankToBankTwoBinding>(R.layout.activity_bank_to_bank_two) {
  private val viewModel: BankToBankTwoVM by viewModels<BankToBankTwoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.bankToBankTwoVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnContinue.setOnClickListener {
      val destIntent = BankToBankThreeActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "BANK_TO_BANK_TWO_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, BankToBankTwoActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
