package com.shopsieecommerceapp.app.modules.profilemyorders.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseFragment
import com.shopsieecommerceapp.app.databinding.FragmentProfileMyOrdersBinding
import com.shopsieecommerceapp.app.modules.profilemyorders.`data`.model.OrderslistRowModel
import com.shopsieecommerceapp.app.modules.profilemyorders.`data`.viewmodel.ProfileMyOrdersVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ProfileMyOrdersFragment :
    BaseFragment<FragmentProfileMyOrdersBinding>(R.layout.fragment_profile_my_orders) {
  private val viewModel: ProfileMyOrdersVM by viewModels<ProfileMyOrdersVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val ordersListAdapter = OrdersListAdapter(viewModel.ordersListList.value?:mutableListOf())
    binding.recyclerOrdersList.adapter = ordersListAdapter
    ordersListAdapter.setOnItemClickListener(
    object : OrdersListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : OrderslistRowModel) {
        onClickRecyclerOrdersList(view, position, item)
      }
    }
    )
    viewModel.ordersListList.observe(requireActivity()) {
      ordersListAdapter.updateData(it)
    }
    binding.profileMyOrdersVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerOrdersList(
    view: View,
    position: Int,
    item: OrderslistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PROFILE_MY_ORDERS_FRAGMENT"

  }
}
