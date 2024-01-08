package com.shopsieecommerceapp.app.modules.productdiscover.ui

import android.view.View
import androidx.activity.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivityProductDiscoverBinding
import com.shopsieecommerceapp.app.modules.productdiscover.`data`.model.ListRowModel
import com.shopsieecommerceapp.app.modules.productdiscover.`data`.viewmodel.ProductDiscoverVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ProductDiscoverActivity :
    BaseActivity<ActivityProductDiscoverBinding>(R.layout.activity_product_discover) {
  private val viewModel: ProductDiscoverVM by viewModels<ProductDiscoverVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val listAdapter = ListAdapter(viewModel.listList.value?:mutableListOf())
    binding.recyclerList.adapter = listAdapter
    listAdapter.setOnItemClickListener(
    object : ListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ListRowModel) {
        onClickRecyclerList(view, position, item)
      }
    }
    )
    viewModel.listList.observe(this) {
      listAdapter.updateData(it)
    }
    binding.productDiscoverVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerList(
    view: View,
    position: Int,
    item: ListRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PRODUCT_DISCOVER_ACTIVITY"

  }
}
