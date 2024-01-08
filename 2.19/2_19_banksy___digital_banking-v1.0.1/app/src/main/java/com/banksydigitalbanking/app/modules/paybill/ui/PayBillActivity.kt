package com.banksydigitalbanking.app.modules.paybill.ui

import android.view.View
import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityPayBillBinding
import com.banksydigitalbanking.app.modules.electricbill.ui.ElectricBillActivity
import com.banksydigitalbanking.app.modules.paybill.`data`.model.PaybillRowModel
import com.banksydigitalbanking.app.modules.paybill.`data`.viewmodel.PayBillVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PayBillActivity : BaseActivity<ActivityPayBillBinding>(R.layout.activity_pay_bill) {
  private val viewModel: PayBillVM by viewModels<PayBillVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val payBillAdapter = PayBillAdapter(viewModel.payBillList.value?:mutableListOf())
    binding.recyclerPayBill.adapter = payBillAdapter
    payBillAdapter.setOnItemClickListener(
    object : PayBillAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PaybillRowModel) {
        onClickRecyclerPayBill(view, position, item)
      }
    }
    )
    viewModel.payBillList.observe(this) {
      payBillAdapter.updateData(it)
    }
    binding.payBillVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerPayBill(
    view: View,
    position: Int,
    item: PaybillRowModel
  ): Unit {
    when(view.id) {
      R.id.linearOne ->  {
        val destIntent = ElectricBillActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "PAY_BILL_ACTIVITY"

  }
}
