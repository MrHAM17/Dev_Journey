package com.ecommerce.app.modules.favoriteproduct.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityFavoriteProductBinding
import com.ecommerce.app.extensions.loadFragment
import com.ecommerce.app.modules.favoriteproduct.`data`.model.FavoriteproductRowModel
import com.ecommerce.app.modules.favoriteproduct.`data`.viewmodel.FavoriteProductVM
import com.ecommerce.app.modules.productdetail.ui.ProductDetailFragment
import kotlin.Int
import kotlin.String
import kotlin.Unit

class FavoriteProductActivity :
    BaseActivity<ActivityFavoriteProductBinding>(R.layout.activity_favorite_product) {
  private val viewModel: FavoriteProductVM by viewModels<FavoriteProductVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val favoriteProductAdapter =
    FavoriteProductAdapter(viewModel.favoriteProductList.value?:mutableListOf())
    binding.recyclerFavoriteProduct.adapter = favoriteProductAdapter
    favoriteProductAdapter.setOnItemClickListener(
    object : FavoriteProductAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FavoriteproductRowModel) {
        onClickRecyclerFavoriteProduct(view, position, item)
      }
    }
    )
    viewModel.favoriteProductList.observe(this) {
      favoriteProductAdapter.updateData(it)
    }
    binding.favoriteProductVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerFavoriteProduct(
    view: View,
    position: Int,
    item: FavoriteproductRowModel
  ): Unit {
    when(view.id) {
      R.id.linearProductItem ->  {
        val destFragment = ProductDetailFragment.getInstance(null)
        this.loadFragment(
            R.id.fragmentContainer,
            destFragment,
            bundle = destFragment.arguments, 
            tag = ProductDetailFragment.TAG, 
            addToBackStack = true, 
            add = false, 
            enter = null, 
            exit = null, 
            )
      }
    }
  }

  companion object {
    const val TAG: String = "FAVORITE_PRODUCT_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, FavoriteProductActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
