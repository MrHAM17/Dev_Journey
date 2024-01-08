package com.shopsieecommerceapp.app.modules.productsearch.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivityProductSearchBinding
import com.shopsieecommerceapp.app.modules.productsearch.`data`.model.ProductsearchRowModel
import com.shopsieecommerceapp.app.modules.productsearch.`data`.viewmodel.ProductSearchVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ProductSearchActivity :
    BaseActivity<ActivityProductSearchBinding>(R.layout.activity_product_search) {
  private val viewModel: ProductSearchVM by viewModels<ProductSearchVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val productSearchAdapter =
    ProductSearchAdapter(viewModel.productSearchList.value?:mutableListOf())
    binding.recyclerProductSearch.adapter = productSearchAdapter
    productSearchAdapter.setOnItemClickListener(
    object : ProductSearchAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ProductsearchRowModel) {
        onClickRecyclerProductSearch(view, position, item)
      }
    }
    )
    viewModel.productSearchList.observe(this) {
      productSearchAdapter.updateData(it)
    }
    binding.productSearchVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerProductSearch(
    view: View,
    position: Int,
    item: ProductsearchRowModel
  ): Unit {
    when(view.id) {
    }
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    companion object {
      const val TAG: String = "PRODUCT_SEARCH_ACTIVITY"

    }
  }
