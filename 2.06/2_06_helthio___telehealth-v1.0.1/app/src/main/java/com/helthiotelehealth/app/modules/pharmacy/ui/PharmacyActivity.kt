package com.helthiotelehealth.app.modules.pharmacy.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityPharmacyBinding
import com.helthiotelehealth.app.modules.pharmacy.`data`.model.PopularproductRowModel
import com.helthiotelehealth.app.modules.pharmacy.`data`.model.ProductonsaleRowModel
import com.helthiotelehealth.app.modules.pharmacy.`data`.viewmodel.PharmacyVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PharmacyActivity : BaseActivity<ActivityPharmacyBinding>(R.layout.activity_pharmacy) {
  private val viewModel: PharmacyVM by viewModels<PharmacyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val popularProductAdapter =
    PopularProductAdapter(viewModel.popularProductList.value?:mutableListOf())
    binding.recyclerPopularProduct.adapter = popularProductAdapter
    popularProductAdapter.setOnItemClickListener(
    object : PopularProductAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PopularproductRowModel) {
        onClickRecyclerPopularProduct(view, position, item)
      }
    }
    )
    viewModel.popularProductList.observe(this) {
      popularProductAdapter.updateData(it)
    }
    val productOnSaleAdapter =
    ProductOnSaleAdapter(viewModel.productOnSaleList.value?:mutableListOf())
    binding.recyclerProductOnSale.adapter = productOnSaleAdapter
    productOnSaleAdapter.setOnItemClickListener(
    object : ProductOnSaleAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ProductonsaleRowModel) {
        onClickRecyclerProductOnSale(view, position, item)
      }
    }
    )
    viewModel.productOnSaleList.observe(this) {
      productOnSaleAdapter.updateData(it)
    }
    binding.pharmacyVM = viewModel
    setUpWebViewCTA()
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerPopularProduct(
    view: View,
    position: Int,
    item: PopularproductRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerProductOnSale(
    view: View,
    position: Int,
    item: ProductonsaleRowModel
  ): Unit {
    when(view.id) {
    }
  }

  private fun setUpWebViewCTA(): Unit {
    binding.webViewCTA.loadUrl("")
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
      const val TAG: String = "PHARMACY_ACTIVITY"

    }
  }
