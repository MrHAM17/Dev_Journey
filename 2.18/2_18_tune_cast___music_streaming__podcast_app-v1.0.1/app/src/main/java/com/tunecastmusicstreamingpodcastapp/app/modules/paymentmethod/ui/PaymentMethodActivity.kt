package com.tunecastmusicstreamingpodcastapp.app.modules.paymentmethod.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityPaymentMethodBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.addnewcard.ui.AddNewCardActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.paymentmethod.`data`.model.PaymentmethodRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.paymentmethod.`data`.viewmodel.PaymentMethodVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PaymentMethodActivity :
    BaseActivity<ActivityPaymentMethodBinding>(R.layout.activity_payment_method) {
  private val viewModel: PaymentMethodVM by viewModels<PaymentMethodVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val paymentMethodAdapter =
    PaymentMethodAdapter(viewModel.paymentMethodList.value?:mutableListOf())
    binding.recyclerPaymentMethod.adapter = paymentMethodAdapter
    paymentMethodAdapter.setOnItemClickListener(
    object : PaymentMethodAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PaymentmethodRowModel) {
        onClickRecyclerPaymentMethod(view, position, item)
      }
    }
    )
    viewModel.paymentMethodList.observe(this) {
      paymentMethodAdapter.updateData(it)
    }
    binding.paymentMethodVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnAddNewCard.setOnClickListener {
      val destIntent = AddNewCardActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = AddNewCardActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerPaymentMethod(
    view: View,
    position: Int,
    item: PaymentmethodRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PAYMENT_METHOD_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PaymentMethodActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
