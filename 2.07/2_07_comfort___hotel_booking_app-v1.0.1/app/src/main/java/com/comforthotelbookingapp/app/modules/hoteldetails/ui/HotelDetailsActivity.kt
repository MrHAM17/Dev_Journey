package com.comforthotelbookingapp.app.modules.hoteldetails.ui

import android.view.View
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityHotelDetailsBinding
import com.comforthotelbookingapp.app.modules.gallery.ui.GalleryActivity
import com.comforthotelbookingapp.app.modules.hoteldetails.`data`.model.FramenineteenRowModel
import com.comforthotelbookingapp.app.modules.hoteldetails.`data`.model.PhotosRowModel
import com.comforthotelbookingapp.app.modules.hoteldetails.`data`.model.SpinnerTypeButtonTypeModel
import com.comforthotelbookingapp.app.modules.hoteldetails.`data`.viewmodel.HotelDetailsVM
import com.comforthotelbookingapp.app.modules.reviewtabcontainer.ui.ReviewTabContainerActivity
import com.comforthotelbookingapp.app.modules.selectdateguest.ui.SelectDateGuestActivity
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HotelDetailsActivity :
    BaseActivity<ActivityHotelDetailsBinding>(R.layout.activity_hotel_details), OnMapReadyCallback {
  private val viewModel: HotelDetailsVM by viewModels<HotelDetailsVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerTypeButtonTypeList.value = mutableListOf(
    SpinnerTypeButtonTypeModel("Item1"),
    SpinnerTypeButtonTypeModel("Item2"),
    SpinnerTypeButtonTypeModel("Item3"),
    SpinnerTypeButtonTypeModel("Item4"),
    SpinnerTypeButtonTypeModel("Item5")
    )
    val spinnerTypeButtonTypeAdapter =
    SpinnerTypeButtonTypeAdapter(this,R.layout.spinner_item,viewModel.spinnerTypeButtonTypeList.value?:
    mutableListOf())
    binding.spinnerTypeButtonType.adapter = spinnerTypeButtonTypeAdapter
    val photosAdapter = PhotosAdapter(viewModel.photosList.value?:mutableListOf())
    binding.recyclerPhotos.adapter = photosAdapter
    photosAdapter.setOnItemClickListener(
    object : PhotosAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PhotosRowModel) {
        onClickRecyclerPhotos(view, position, item)
      }
    }
    )
    viewModel.photosList.observe(this) {
      photosAdapter.updateData(it)
    }
    val frameNineteenAdapter =
    FrameNineteenAdapter(viewModel.frameNineteenList.value?:mutableListOf())
    binding.recyclerFrameNineteen.adapter = frameNineteenAdapter
    frameNineteenAdapter.setOnItemClickListener(
    object : FrameNineteenAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FramenineteenRowModel) {
        onClickRecyclerFrameNineteen(view, position, item)
      }
    }
    )
    viewModel.frameNineteenList.observe(this) {
      frameNineteenAdapter.updateData(it)
    }
    binding.hotelDetailsVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapMap) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
    binding.txtSeeAll.setOnClickListener {
      val destIntent = GalleryActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.txtSeeAll1.setOnClickListener {
      val destIntent = ReviewTabContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnBookNow.setOnClickListener {
      val destIntent = SelectDateGuestActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerPhotos(
    view: View,
    position: Int,
    item: PhotosRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerFrameNineteen(
    view: View,
    position: Int,
    item: FramenineteenRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "HOTEL_DETAILS_ACTIVITY"

  }
}
