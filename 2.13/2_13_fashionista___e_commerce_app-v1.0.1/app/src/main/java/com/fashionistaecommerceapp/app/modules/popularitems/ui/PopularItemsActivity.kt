package com.fashionistaecommerceapp.app.modules.popularitems.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityPopularItemsBinding
import com.fashionistaecommerceapp.app.modules.popularitems.`data`.model.PopularitemsRowModel
import com.fashionistaecommerceapp.app.modules.popularitems.`data`.viewmodel.PopularItemsVM
import com.fashionistaecommerceapp.app.modules.productview.ui.ProductViewActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PopularItemsActivity :
    BaseActivity<ActivityPopularItemsBinding>(R.layout.activity_popular_items) {
  private val viewModel: PopularItemsVM by viewModels<PopularItemsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val popularItemsAdapter =
    PopularItemsAdapter(viewModel.popularItemsList.value?:mutableListOf())
    binding.recyclerPopularItems.adapter = popularItemsAdapter
    popularItemsAdapter.setOnItemClickListener(
    object : PopularItemsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PopularitemsRowModel) {
        onClickRecyclerPopularItems(view, position, item)
      }
    }
    )
    viewModel.popularItemsList.observe(this) {
      popularItemsAdapter.updateData(it)
    }
    binding.popularItemsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerPopularItems(
    view: View,
    position: Int,
    item: PopularitemsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearCard ->  {
        onClickRecyclerPopularItemsLinearCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerPopularItemsLinearCard(
    view: View,
    position: Int,
    item: PopularitemsRowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = ProductViewActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      1 ->  {
        val destIntent = ProductViewActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      2 ->  {
        val destIntent = ProductViewActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      3 ->  {
        val destIntent = ProductViewActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "POPULAR_ITEMS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PopularItemsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
