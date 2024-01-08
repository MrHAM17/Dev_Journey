package com.healthcare.app.modules.cart.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.healthcare.app.R
import com.healthcare.app.appcomponents.base.BaseActivity
import com.healthcare.app.databinding.ActivityCartBinding
import com.healthcare.app.modules.cart.`data`.model.Drugs2RowModel
import com.healthcare.app.modules.cart.`data`.viewmodel.CartVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class CartActivity : BaseActivity<ActivityCartBinding>(R.layout.activity_cart) {
  private val viewModel: CartVM by viewModels<CartVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val drugsAdapter = DrugsAdapter(viewModel.drugsList.value?:mutableListOf())
    binding.recyclerDrugs.adapter = drugsAdapter
    drugsAdapter.setOnItemClickListener(
    object : DrugsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Drugs2RowModel) {
        onClickRecyclerDrugs(view, position, item)
      }
    }
    )
    viewModel.drugsList.observe(this) {
      drugsAdapter.updateData(it)
    }
    binding.cartVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerDrugs(
    view: View,
    position: Int,
    item: Drugs2RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "CART_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, CartActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
