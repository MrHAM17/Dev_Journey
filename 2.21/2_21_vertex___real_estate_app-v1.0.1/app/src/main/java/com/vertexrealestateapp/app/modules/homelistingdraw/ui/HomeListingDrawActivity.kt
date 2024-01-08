package com.vertexrealestateapp.app.modules.homelistingdraw.ui

import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityHomeListingDrawBinding
import com.vertexrealestateapp.app.modules.homelistingdraw.`data`.viewmodel.HomeListingDrawVM
import kotlin.String
import kotlin.Unit

class HomeListingDrawActivity :
    BaseActivity<ActivityHomeListingDrawBinding>(R.layout.activity_home_listing_draw),
    OnMapReadyCallback {
  private val viewModel: HomeListingDrawVM by viewModels<HomeListingDrawVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.homeListingDrawVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapMap) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "HOME_LISTING_DRAW_ACTIVITY"

  }
}
