package com.ecommerce.app.modules.order.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityOrderBinding
import com.ecommerce.app.modules.order.`data`.model.OrdersRowModel
import com.ecommerce.app.modules.order.`data`.viewmodel.OrderVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class OrderActivity : BaseActivity<ActivityOrderBinding>(R.layout.activity_order) {
  private val viewModel: OrderVM by viewModels<OrderVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val ordersAdapter = OrdersAdapter(viewModel.ordersList.value?:mutableListOf())
    binding.recyclerOrders.adapter = ordersAdapter
    ordersAdapter.setOnItemClickListener(
    object : OrdersAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : OrdersRowModel) {
        onClickRecyclerOrders(view, position, item)
      }
    }
    )
    viewModel.ordersList.observe(this) {
      ordersAdapter.updateData(it)
    }
    binding.orderVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerOrders(
    view: View,
    position: Int,
    item: OrdersRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ORDER_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, OrderActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
