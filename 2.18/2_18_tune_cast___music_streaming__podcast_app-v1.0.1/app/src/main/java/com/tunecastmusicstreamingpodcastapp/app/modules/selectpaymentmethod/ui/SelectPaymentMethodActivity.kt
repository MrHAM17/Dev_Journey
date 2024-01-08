package com.tunecastmusicstreamingpodcastapp.app.modules.selectpaymentmethod.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivitySelectPaymentMethodBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.addnewcard.ui.AddNewCardActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.paymentsummary.ui.PaymentSummaryActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.selectpaymentmethod.`data`.model.SelectpaymentmethodRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.selectpaymentmethod.`data`.viewmodel.SelectPaymentMethodVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SelectPaymentMethodActivity :
    BaseActivity<ActivitySelectPaymentMethodBinding>(R.layout.activity_select_payment_method) {
  private val viewModel: SelectPaymentMethodVM by viewModels<SelectPaymentMethodVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val selectPaymentMethodAdapter =
    SelectPaymentMethodAdapter(viewModel.selectPaymentMethodList.value?:mutableListOf())
    binding.recyclerSelectPaymentMethod.adapter = selectPaymentMethodAdapter
    selectPaymentMethodAdapter.setOnItemClickListener(
    object : SelectPaymentMethodAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SelectpaymentmethodRowModel) {
        onClickRecyclerSelectPaymentMethod(view, position, item)
      }
    }
    )
    viewModel.selectPaymentMethodList.observe(this) {
      selectPaymentMethodAdapter.updateData(it)
    }
    binding.selectPaymentMethodVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnContinue.setOnClickListener {
      val destIntent = PaymentSummaryActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnAddNewCard.setOnClickListener {
      val destIntent = AddNewCardActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerSelectPaymentMethod(
    view: View,
    position: Int,
    item: SelectpaymentmethodRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SELECT_PAYMENT_METHOD_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SelectPaymentMethodActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
