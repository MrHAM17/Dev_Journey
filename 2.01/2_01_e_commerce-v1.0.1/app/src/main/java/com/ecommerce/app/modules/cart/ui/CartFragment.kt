package com.ecommerce.app.modules.cart.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseFragment
import com.ecommerce.app.databinding.FragmentCartBinding
import com.ecommerce.app.modules.cart.`data`.model.CartRowModel
import com.ecommerce.app.modules.cart.`data`.viewmodel.CartVM
import com.ecommerce.app.modules.notification.ui.NotificationActivity
import com.ecommerce.app.modules.shipto.ui.ShipToActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class CartFragment : BaseFragment<FragmentCartBinding>(R.layout.fragment_cart) {
  private val viewModel: CartVM by viewModels<CartVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val cartAdapter = CartAdapter(viewModel.cartList.value?:mutableListOf())
    binding.recyclerCart.adapter = cartAdapter
    cartAdapter.setOnItemClickListener(
    object : CartAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CartRowModel) {
        onClickRecyclerCart(view, position, item)
      }
    }
    )
    viewModel.cartList.observe(requireActivity()) {
      cartAdapter.updateData(it)
    }
    binding.cartVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageNotificationIcon.setOnClickListener {
      val destIntent = NotificationActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.btnCheckOut.setOnClickListener {
      val destIntent = ShipToActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerCart(
    view: View,
    position: Int,
    item: CartRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "CART_FRAGMENT"


    fun getInstance(bundle: Bundle?): CartFragment {
      val fragment = CartFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
