package com.comforthotelbookingapp.app.modules.choosepaymentmethod.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityChoosePaymentMethodBinding
import com.comforthotelbookingapp.app.modules.addnewcard.ui.AddNewCardActivity
import com.comforthotelbookingapp.app.modules.choosepaymentmethod.`data`.model.ChoosepaymentmethodRowModel
import com.comforthotelbookingapp.app.modules.choosepaymentmethod.`data`.viewmodel.ChoosePaymentMethodVM
import com.comforthotelbookingapp.app.modules.confirmpayment.ui.ConfirmPaymentActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ChoosePaymentMethodActivity :
    BaseActivity<ActivityChoosePaymentMethodBinding>(R.layout.activity_choose_payment_method) {
  private val viewModel: ChoosePaymentMethodVM by viewModels<ChoosePaymentMethodVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val choosePaymentMethodAdapter =
    ChoosePaymentMethodAdapter(viewModel.choosePaymentMethodList.value?:mutableListOf())
    binding.recyclerChoosePaymentMethod.adapter = choosePaymentMethodAdapter
    choosePaymentMethodAdapter.setOnItemClickListener(
    object : ChoosePaymentMethodAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ChoosepaymentmethodRowModel) {
        onClickRecyclerChoosePaymentMethod(view, position, item)
      }
    }
    )
    viewModel.choosePaymentMethodList.observe(this) {
      choosePaymentMethodAdapter.updateData(it)
    }
    binding.choosePaymentMethodVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtAddNewCard.setOnClickListener {
      val destIntent = AddNewCardActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = ConfirmPaymentActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerChoosePaymentMethod(
    view: View,
    position: Int,
    item: ChoosepaymentmethodRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "CHOOSE_PAYMENT_METHOD_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ChoosePaymentMethodActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
