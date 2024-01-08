package com.ecommerce.app.modules.superflashsale.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivitySuperFlashSaleBinding
import com.ecommerce.app.modules.search.ui.SearchActivity
import com.ecommerce.app.modules.superflashsale.`data`.model.SuperflashsaleRowModel
import com.ecommerce.app.modules.superflashsale.`data`.viewmodel.SuperFlashSaleVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SuperFlashSaleActivity :
    BaseActivity<ActivitySuperFlashSaleBinding>(R.layout.activity_super_flash_sale) {
  private val viewModel: SuperFlashSaleVM by viewModels<SuperFlashSaleVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val superFlashSaleAdapter =
    SuperFlashSaleAdapter(viewModel.superFlashSaleList.value?:mutableListOf())
    binding.recyclerSuperFlashSale.adapter = superFlashSaleAdapter
    superFlashSaleAdapter.setOnItemClickListener(
    object : SuperFlashSaleAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SuperflashsaleRowModel) {
        onClickRecyclerSuperFlashSale(view, position, item)
      }
    }
    )
    viewModel.superFlashSaleList.observe(this) {
      superFlashSaleAdapter.updateData(it)
    }
    binding.superFlashSaleVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageSearchIcon.setOnClickListener {
      val destIntent = SearchActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSuperFlashSale(
    view: View,
    position: Int,
    item: SuperflashsaleRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SUPER_FLASH_SALE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SuperFlashSaleActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
