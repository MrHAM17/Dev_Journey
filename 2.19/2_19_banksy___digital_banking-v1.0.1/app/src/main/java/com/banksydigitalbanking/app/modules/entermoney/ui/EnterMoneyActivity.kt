package com.banksydigitalbanking.app.modules.entermoney.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityEnterMoneyBinding
import com.banksydigitalbanking.app.modules.addperson.ui.AddPersonActivity
import com.banksydigitalbanking.app.modules.carddetails.ui.CardDetailsActivity
import com.banksydigitalbanking.app.modules.entermoney.`data`.viewmodel.EnterMoneyVM
import com.banksydigitalbanking.app.modules.sendmoneyenterpassword.ui.SendMoneyEnterPasswordActivity
import kotlin.String
import kotlin.Unit

class EnterMoneyActivity : BaseActivity<ActivityEnterMoneyBinding>(R.layout.activity_enter_money) {
  private val viewModel: EnterMoneyVM by viewModels<EnterMoneyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.enterMoneyVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearCard.setOnClickListener {
      val destIntent = CardDetailsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = SendMoneyEnterPasswordActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearCard1.setOnClickListener {
      val destIntent = CardDetailsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnPlus.setOnClickListener {
      val destIntent = AddPersonActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "ENTER_MONEY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, EnterMoneyActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
