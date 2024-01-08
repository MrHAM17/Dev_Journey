package com.fashionistaecommerceapp.app.modules.discountitems.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityDiscountItemsBinding
import com.fashionistaecommerceapp.app.modules.discountitems.`data`.model.DiscountitemsRowModel
import com.fashionistaecommerceapp.app.modules.discountitems.`data`.viewmodel.DiscountItemsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DiscountItemsActivity :
    BaseActivity<ActivityDiscountItemsBinding>(R.layout.activity_discount_items) {
  private val viewModel: DiscountItemsVM by viewModels<DiscountItemsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val discountItemsAdapter =
    DiscountItemsAdapter(viewModel.discountItemsList.value?:mutableListOf())
    binding.recyclerDiscountItems.adapter = discountItemsAdapter
    discountItemsAdapter.setOnItemClickListener(
    object : DiscountItemsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : DiscountitemsRowModel) {
        onClickRecyclerDiscountItems(view, position, item)
      }
    }
    )
    viewModel.discountItemsList.observe(this) {
      discountItemsAdapter.updateData(it)
    }
    binding.discountItemsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerDiscountItems(
    view: View,
    position: Int,
    item: DiscountitemsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "DISCOUNT_ITEMS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, DiscountItemsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
