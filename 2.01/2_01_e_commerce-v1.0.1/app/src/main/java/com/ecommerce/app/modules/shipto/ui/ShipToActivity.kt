package com.ecommerce.app.modules.shipto.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityShipToBinding
import com.ecommerce.app.modules.paymentmethod.ui.PaymentMethodActivity
import com.ecommerce.app.modules.shipto.`data`.model.ShiptoRowModel
import com.ecommerce.app.modules.shipto.`data`.viewmodel.ShipToVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ShipToActivity : BaseActivity<ActivityShipToBinding>(R.layout.activity_ship_to) {
  private val viewModel: ShipToVM by viewModels<ShipToVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val shipToAdapter = ShipToAdapter(viewModel.shipToList.value?:mutableListOf())
    binding.recyclerShipTo.adapter = shipToAdapter
    shipToAdapter.setOnItemClickListener(
    object : ShipToAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ShiptoRowModel) {
        onClickRecyclerShipTo(view, position, item)
      }
    }
    )
    viewModel.shipToList.observe(this) {
      shipToAdapter.updateData(it)
    }
    binding.shipToVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = PaymentMethodActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerShipTo(
    view: View,
    position: Int,
    item: ShiptoRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SHIP_TO_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ShipToActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
