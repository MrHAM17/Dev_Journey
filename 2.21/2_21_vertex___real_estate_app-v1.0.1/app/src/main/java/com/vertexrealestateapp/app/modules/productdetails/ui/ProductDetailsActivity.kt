package com.vertexrealestateapp.app.modules.productdetails.ui

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityProductDetailsBinding
import com.vertexrealestateapp.app.modules.pickdate.ui.PickDateActivity
import com.vertexrealestateapp.app.modules.productdetails.`data`.model.CardsRowModel
import com.vertexrealestateapp.app.modules.productdetails.`data`.model.ImageSliderImageAndDetailsModel
import com.vertexrealestateapp.app.modules.productdetails.`data`.model.ImagesRowModel
import com.vertexrealestateapp.app.modules.productdetails.`data`.model.PropertydetailsRowModel
import com.vertexrealestateapp.app.modules.productdetails.`data`.viewmodel.ProductDetailsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit
import kotlin.collections.ArrayList

class ProductDetailsActivity :
    BaseActivity<ActivityProductDetailsBinding>(R.layout.activity_product_details),
    OnMapReadyCallback {
  private val imageUri: Uri =
      Uri.parse("android.resource://com.vertexrealestateapp.app/drawable/img_image_343x343")


  private val imageSliderImageAndDetailsItems: ArrayList<ImageSliderImageAndDetailsModel> =
      arrayListOf(ImageSliderImageAndDetailsModel(imageImage =
  imageUri.toString()),ImageSliderImageAndDetailsModel(imageImage = imageUri.toString()))


  private val viewModel: ProductDetailsVM by viewModels<ProductDetailsVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val imageAndDetailsAdapter = ImageAndDetailsAdapter(imageSliderImageAndDetailsItems,true)
    binding.imageSliderImageAndDetails.adapter = imageAndDetailsAdapter
    binding.imageSliderImageAndDetails.onIndicatorProgress = { selectingPosition, progress ->
      binding.indicatorCasourel.onPageScrolled(selectingPosition, progress)
    }
    binding.indicatorCasourel.updateIndicatorCounts(binding.imageSliderImageAndDetails.indicatorCount)
    val propertyDetailsAdapter =
    PropertyDetailsAdapter(viewModel.propertyDetailsList.value?:mutableListOf())
    binding.recyclerPropertyDetails.adapter = propertyDetailsAdapter
    propertyDetailsAdapter.setOnItemClickListener(
    object : PropertyDetailsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PropertydetailsRowModel) {
        onClickRecyclerPropertyDetails(view, position, item)
      }
    }
    )
    viewModel.propertyDetailsList.observe(this) {
      propertyDetailsAdapter.updateData(it)
    }
    val imagesAdapter = ImagesAdapter(viewModel.imagesList.value?:mutableListOf())
    binding.recyclerImages.adapter = imagesAdapter
    imagesAdapter.setOnItemClickListener(
    object : ImagesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ImagesRowModel) {
        onClickRecyclerImages(view, position, item)
      }
    }
    )
    viewModel.imagesList.observe(this) {
      imagesAdapter.updateData(it)
    }
    val cardsAdapter = CardsAdapter(viewModel.cardsList.value?:mutableListOf())
    binding.recyclerCards.adapter = cardsAdapter
    cardsAdapter.setOnItemClickListener(
    object : CardsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CardsRowModel) {
        onClickRecyclerCards(view, position, item)
      }
    }
    )
    viewModel.cardsList.observe(this) {
      cardsAdapter.updateData(it)
    }
    binding.productDetailsVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapMap) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun onPause(): Unit {
    binding.imageSliderImageAndDetails.pauseAutoScroll()
    super.onPause()
  }

  override fun onResume(): Unit {
    super.onResume()
    binding.imageSliderImageAndDetails.resumeAutoScroll()
  }

  override fun setUpClicks(): Unit {
    binding.btnScheduleTour.setOnClickListener {
      val destIntent = PickDateActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerPropertyDetails(
    view: View,
    position: Int,
    item: PropertydetailsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerImages(
    view: View,
    position: Int,
    item: ImagesRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerCards(
    view: View,
    position: Int,
    item: CardsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PRODUCT_DETAILS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ProductDetailsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
