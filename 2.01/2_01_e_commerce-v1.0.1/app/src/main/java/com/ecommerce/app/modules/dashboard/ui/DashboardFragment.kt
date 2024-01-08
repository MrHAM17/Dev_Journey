package com.ecommerce.app.modules.dashboard.ui

import android.net.Uri
import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseFragment
import com.ecommerce.app.databinding.FragmentDashboardBinding
import com.ecommerce.app.extensions.loadFragment
import com.ecommerce.app.modules.dashboard.`data`.model.ArrightRowModel
import com.ecommerce.app.modules.dashboard.`data`.model.FlashsaleRowModel
import com.ecommerce.app.modules.dashboard.`data`.model.ImageSliderOfferBannerModel
import com.ecommerce.app.modules.dashboard.`data`.model.MegasaleRowModel
import com.ecommerce.app.modules.dashboard.`data`.model.ProductsRowModel
import com.ecommerce.app.modules.dashboard.`data`.viewmodel.DashboardVM
import com.ecommerce.app.modules.favoriteproduct.ui.FavoriteProductActivity
import com.ecommerce.app.modules.listcategory.ui.ListCategoryActivity
import com.ecommerce.app.modules.notification.ui.NotificationActivity
import com.ecommerce.app.modules.productdetail.ui.ProductDetailFragment
import com.ecommerce.app.modules.search.ui.SearchActivity
import com.ecommerce.app.modules.superflashsale.ui.SuperFlashSaleActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit
import kotlin.collections.ArrayList

class DashboardFragment : BaseFragment<FragmentDashboardBinding>(R.layout.fragment_dashboard) {
  private val imageUri: Uri =
      Uri.parse("android.resource://com.ecommerce.app/drawable/img_promotion_image")


  private val imageSliderOfferBannerItems: ArrayList<ImageSliderOfferBannerModel> =
      arrayListOf(ImageSliderOfferBannerModel(imagePromotionImage =
  imageUri.toString()),ImageSliderOfferBannerModel(imagePromotionImage =
  imageUri.toString()))


  private val viewModel: DashboardVM by viewModels<DashboardVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val offerBannerAdapter = OfferBannerAdapter(imageSliderOfferBannerItems,true)
    binding.imageSliderOfferBanner.adapter = offerBannerAdapter
    binding.imageSliderOfferBanner.onIndicatorProgress = { selectingPosition, progress ->
      binding.indicatorSettings.onPageScrolled(selectingPosition, progress)
    }
    binding.indicatorSettings.updateIndicatorCounts(binding.imageSliderOfferBanner.indicatorCount)
    val arrowRightAdapter = ArrowRightAdapter(viewModel.arrowRightList.value?:mutableListOf())
    binding.recyclerArrowRight.adapter = arrowRightAdapter
    arrowRightAdapter.setOnItemClickListener(
    object : ArrowRightAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ArrightRowModel) {
        onClickRecyclerArrowRight(view, position, item)
      }
    }
    )
    viewModel.arrowRightList.observe(requireActivity()) {
      arrowRightAdapter.updateData(it)
    }
    val flashSaleAdapter = FlashSaleAdapter(viewModel.flashSaleList.value?:mutableListOf())
    binding.recyclerFlashSale.adapter = flashSaleAdapter
    flashSaleAdapter.setOnItemClickListener(
    object : FlashSaleAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FlashsaleRowModel) {
        onClickRecyclerFlashSale(view, position, item)
      }
    }
    )
    viewModel.flashSaleList.observe(requireActivity()) {
      flashSaleAdapter.updateData(it)
    }
    val megaSaleAdapter = MegaSaleAdapter(viewModel.megaSaleList.value?:mutableListOf())
    binding.recyclerMegaSale.adapter = megaSaleAdapter
    megaSaleAdapter.setOnItemClickListener(
    object : MegaSaleAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : MegasaleRowModel) {
        onClickRecyclerMegaSale(view, position, item)
      }
    }
    )
    viewModel.megaSaleList.observe(requireActivity()) {
      megaSaleAdapter.updateData(it)
    }
    val productsAdapter = ProductsAdapter(viewModel.productsList.value?:mutableListOf())
    binding.recyclerProducts.adapter = productsAdapter
    productsAdapter.setOnItemClickListener(
    object : ProductsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ProductsRowModel) {
        onClickRecyclerProducts(view, position, item)
      }
    }
    )
    viewModel.productsList.observe(requireActivity()) {
      productsAdapter.updateData(it)
    }
    binding.dashboardVM = viewModel
  }

  override fun onPause(): Unit {
    binding.imageSliderOfferBanner.pauseAutoScroll()
    super.onPause()
  }

  override fun onResume(): Unit {
    super.onResume()
    binding.imageSliderOfferBanner.resumeAutoScroll()
  }

  override fun setUpClicks(): Unit {
    binding.linearFlashSaleHeader.setOnClickListener {
      val destIntent = SuperFlashSaleActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.txtMoreCategoryLink.setOnClickListener {
      val destIntent = ListCategoryActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.imageLoveIcon.setOnClickListener {
      val destIntent = FavoriteProductActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.txtSearchProduct.setOnClickListener {
      val destIntent = SearchActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.imageNotificationIcon.setOnClickListener {
      val destIntent = NotificationActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerArrowRight(
    view: View,
    position: Int,
    item: ArrightRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerFlashSale(
    view: View,
    position: Int,
    item: FlashsaleRowModel
  ): Unit {
    when(view.id) {
      R.id.linearProductItem ->  {
        val destFragment = ProductDetailFragment.getInstance(null)
        requireActivity().loadFragment(
            R.id.fragmentContainer,
            destFragment,
            bundle = destFragment.arguments, 
            tag = ProductDetailFragment.TAG, 
            addToBackStack = true, 
            add = false, 
            enter = null, 
            exit = null, 
            )
        requireActivity().onBackPressed()
      }
    }
  }

  fun onClickRecyclerMegaSale(
    view: View,
    position: Int,
    item: MegasaleRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerProducts(
    view: View,
    position: Int,
    item: ProductsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "DASHBOARD_FRAGMENT"


    fun getInstance(bundle: Bundle?): DashboardFragment {
      val fragment = DashboardFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
