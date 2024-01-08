package com.banksydigitalbanking.app.modules.banktobankone.ui

import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityBankToBankOneBinding
import com.banksydigitalbanking.app.modules.banktobankone.`data`.viewmodel.BankToBankOneVM
import com.banksydigitalbanking.app.modules.banktobanktwo.ui.BankToBankTwoActivity
import com.banksydigitalbanking.app.modules.carddetails.ui.CardDetailsActivity
import kotlin.String
import kotlin.Unit

class BankToBankOneActivity :
    BaseActivity<ActivityBankToBankOneBinding>(R.layout.activity_bank_to_bank_one) {
  private val viewModel: BankToBankOneVM by viewModels<BankToBankOneVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.bankToBankOneVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearCard.setOnClickListener {
      val destIntent = CardDetailsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = BankToBankTwoActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearCard1.setOnClickListener {
      val destIntent = CardDetailsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "BANK_TO_BANK_ONE_ACTIVITY"

  }
}
