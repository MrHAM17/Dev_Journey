package com.jusplaymoviestreamingapp.app.modules.paymentmethod.ui

import android.view.View
import androidx.activity.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityPaymentMethodBinding
import com.jusplaymoviestreamingapp.app.modules.paymentmethod.`data`.model.PaymentmethodlistRowModel
import com.jusplaymoviestreamingapp.app.modules.paymentmethod.`data`.viewmodel.PaymentMethodVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PaymentMethodActivity :
    BaseActivity<ActivityPaymentMethodBinding>(R.layout.activity_payment_method) {
  private val viewModel: PaymentMethodVM by viewModels<PaymentMethodVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val paymentMethodListAdapter =
    PaymentMethodListAdapter(viewModel.paymentMethodListList.value?:mutableListOf())
    binding.recyclerPaymentMethodList.adapter = paymentMethodListAdapter
    paymentMethodListAdapter.setOnItemClickListener(
    object : PaymentMethodListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PaymentmethodlistRowModel) {
        onClickRecyclerPaymentMethodList(view, position, item)
      }
    }
    )
    viewModel.paymentMethodListList.observe(this) {
      paymentMethodListAdapter.updateData(it)
    }
    binding.paymentMethodVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerPaymentMethodList(
    view: View,
    position: Int,
    item: PaymentmethodlistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PAYMENT_METHOD_ACTIVITY"

  }
}
