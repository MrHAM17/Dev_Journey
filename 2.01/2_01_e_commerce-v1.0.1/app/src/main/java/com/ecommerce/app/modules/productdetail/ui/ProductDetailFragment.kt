package com.ecommerce.app.modules.productdetail.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseFragment
import com.ecommerce.app.databinding.FragmentProductDetailBinding
import com.ecommerce.app.modules.productdetail.`data`.model.BlueRowModel
import com.ecommerce.app.modules.productdetail.`data`.model.Products1RowModel
import com.ecommerce.app.modules.productdetail.`data`.model.RecomendedRowModel
import com.ecommerce.app.modules.productdetail.`data`.viewmodel.ProductDetailVM
import com.ecommerce.app.modules.reviewproduct.ui.ReviewProductActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ProductDetailFragment :
    BaseFragment<FragmentProductDetailBinding>(R.layout.fragment_product_detail) {
  private val viewModel: ProductDetailVM by viewModels<ProductDetailVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val blueAdapter = BlueAdapter(viewModel.blueList.value?:mutableListOf())
    binding.recyclerBlue.adapter = blueAdapter
    blueAdapter.setOnItemClickListener(
    object : BlueAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : BlueRowModel) {
        onClickRecyclerBlue(view, position, item)
      }
    }
    )
    viewModel.blueList.observe(requireActivity()) {
      blueAdapter.updateData(it)
    }
    val productsAdapter = ProductsAdapter(viewModel.productsList.value?:mutableListOf())
    binding.recyclerProducts.adapter = productsAdapter
    productsAdapter.setOnItemClickListener(
    object : ProductsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Products1RowModel) {
        onClickRecyclerProducts(view, position, item)
      }
    }
    )
    viewModel.productsList.observe(requireActivity()) {
      productsAdapter.updateData(it)
    }
    val recomendedAdapter = RecomendedAdapter(viewModel.recomendedList.value?:mutableListOf())
    binding.recyclerRecomended.adapter = recomendedAdapter
    recomendedAdapter.setOnItemClickListener(
    object : RecomendedAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : RecomendedRowModel) {
        onClickRecyclerRecomended(view, position, item)
      }
    }
    )
    viewModel.recomendedList.observe(requireActivity()) {
      recomendedAdapter.updateData(it)
    }
    binding.productDetailVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtSeeMoreLink.setOnClickListener {
      val destIntent = ReviewProductActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerBlue(
    view: View,
    position: Int,
    item: BlueRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerProducts(
    view: View,
    position: Int,
    item: Products1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerRecomended(
    view: View,
    position: Int,
    item: RecomendedRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PRODUCT_DETAIL_FRAGMENT"


    fun getInstance(bundle: Bundle?): ProductDetailFragment {
      val fragment = ProductDetailFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
