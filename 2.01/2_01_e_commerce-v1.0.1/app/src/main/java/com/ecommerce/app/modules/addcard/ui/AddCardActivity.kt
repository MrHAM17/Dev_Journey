package com.ecommerce.app.modules.addcard.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityAddCardBinding
import com.ecommerce.app.modules.addcard.`data`.viewmodel.AddCardVM
import com.ecommerce.app.modules.creditcardanddebit.ui.CreditCardAndDebitActivity
import kotlin.String
import kotlin.Unit

class AddCardActivity : BaseActivity<ActivityAddCardBinding>(R.layout.activity_add_card) {
  private val viewModel: AddCardVM by viewModels<AddCardVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.addCardVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnAddCard.setOnClickListener {
      val destIntent = CreditCardAndDebitActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "ADD_CARD_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddCardActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
