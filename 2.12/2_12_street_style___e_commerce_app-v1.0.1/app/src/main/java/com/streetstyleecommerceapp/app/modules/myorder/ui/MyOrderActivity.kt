package com.streetstyleecommerceapp.app.modules.myorder.ui

import android.view.View
import androidx.activity.viewModels
import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.base.BaseActivity
import com.streetstyleecommerceapp.app.databinding.ActivityMyOrderBinding
import com.streetstyleecommerceapp.app.modules.myorder.`data`.model.MyorderRowModel
import com.streetstyleecommerceapp.app.modules.myorder.`data`.viewmodel.MyOrderVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MyOrderActivity : BaseActivity<ActivityMyOrderBinding>(R.layout.activity_my_order) {
  private val viewModel: MyOrderVM by viewModels<MyOrderVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val myOrderAdapter = MyOrderAdapter(viewModel.myOrderList.value?:mutableListOf())
    binding.recyclerMyOrder.adapter = myOrderAdapter
    myOrderAdapter.setOnItemClickListener(
    object : MyOrderAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : MyorderRowModel) {
        onClickRecyclerMyOrder(view, position, item)
      }
    }
    )
    viewModel.myOrderList.observe(this) {
      myOrderAdapter.updateData(it)
    }
    binding.myOrderVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerMyOrder(
    view: View,
    position: Int,
    item: MyorderRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "MY_ORDER_ACTIVITY"

  }
}
