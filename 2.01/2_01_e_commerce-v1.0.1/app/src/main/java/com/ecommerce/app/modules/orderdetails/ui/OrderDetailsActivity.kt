package com.ecommerce.app.modules.orderdetails.ui

import android.view.View
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityOrderDetailsBinding
import com.ecommerce.app.modules.orderdetails.`data`.model.ProductRowModel
import com.ecommerce.app.modules.orderdetails.`data`.viewmodel.OrderDetailsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class OrderDetailsActivity :
    BaseActivity<ActivityOrderDetailsBinding>(R.layout.activity_order_details) {
  private val viewModel: OrderDetailsVM by viewModels<OrderDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val productAdapter = ProductAdapter(viewModel.productList.value?:mutableListOf())
    binding.recyclerProduct.adapter = productAdapter
    productAdapter.setOnItemClickListener(
    object : ProductAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ProductRowModel) {
        onClickRecyclerProduct(view, position, item)
      }
    }
    )
    viewModel.productList.observe(this) {
      productAdapter.updateData(it)
    }
    binding.orderDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerProduct(
    view: View,
    position: Int,
    item: ProductRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ORDER_DETAILS_ACTIVITY"

  }
}
