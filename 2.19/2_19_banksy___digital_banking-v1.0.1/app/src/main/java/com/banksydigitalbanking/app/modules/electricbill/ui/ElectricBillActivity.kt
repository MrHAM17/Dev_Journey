package com.banksydigitalbanking.app.modules.electricbill.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityElectricBillBinding
import com.banksydigitalbanking.app.modules.bilpaymentsuccess.ui.BilPaymentSuccessActivity
import com.banksydigitalbanking.app.modules.carddetails.ui.CardDetailsActivity
import com.banksydigitalbanking.app.modules.electricbill.`data`.model.ElectricbillRowModel
import com.banksydigitalbanking.app.modules.electricbill.`data`.viewmodel.ElectricBillVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ElectricBillActivity :
    BaseActivity<ActivityElectricBillBinding>(R.layout.activity_electric_bill) {
  private val viewModel: ElectricBillVM by viewModels<ElectricBillVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val electricBillAdapter =
    ElectricBillAdapter(viewModel.electricBillList.value?:mutableListOf())
    binding.recyclerElectricBill.adapter = electricBillAdapter
    electricBillAdapter.setOnItemClickListener(
    object : ElectricBillAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ElectricbillRowModel) {
        onClickRecyclerElectricBill(view, position, item)
      }
    }
    )
    viewModel.electricBillList.observe(this) {
      electricBillAdapter.updateData(it)
    }
    binding.electricBillVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSendOTP.setOnClickListener {
      val destIntent = BilPaymentSuccessActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerElectricBill(
    view: View,
    position: Int,
    item: ElectricbillRowModel
  ): Unit {
    when(view.id) {
      R.id.linearCard ->  {
        onClickRecyclerElectricBillLinearCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerElectricBillLinearCard(
    view: View,
    position: Int,
    item: ElectricbillRowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = CardDetailsActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      1 ->  {
        val destIntent = CardDetailsActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "ELECTRIC_BILL_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ElectricBillActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
