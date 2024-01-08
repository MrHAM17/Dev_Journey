package com.comforthotelbookingapp.app.modules.refundmethod.ui

import android.view.View
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityRefundMethodBinding
import com.comforthotelbookingapp.app.modules.refundmethod.`data`.model.RefundmethodRowModel
import com.comforthotelbookingapp.app.modules.refundmethod.`data`.viewmodel.RefundMethodVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class RefundMethodActivity :
    BaseActivity<ActivityRefundMethodBinding>(R.layout.activity_refund_method) {
  private val viewModel: RefundMethodVM by viewModels<RefundMethodVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val refundMethodAdapter =
    RefundMethodAdapter(viewModel.refundMethodList.value?:mutableListOf())
    binding.recyclerRefundMethod.adapter = refundMethodAdapter
    refundMethodAdapter.setOnItemClickListener(
    object : RefundMethodAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : RefundmethodRowModel) {
        onClickRecyclerRefundMethod(view, position, item)
      }
    }
    )
    viewModel.refundMethodList.observe(this) {
      refundMethodAdapter.updateData(it)
    }
    binding.refundMethodVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerRefundMethod(
    view: View,
    position: Int,
    item: RefundmethodRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "REFUND_METHOD_ACTIVITY"

  }
}
