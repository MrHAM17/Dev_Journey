package com.vertexrealestateapp.app.modules.homelistingsatelite.ui

import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityHomeListingSateliteBinding
import com.vertexrealestateapp.app.modules.homelistingsatelite.`data`.viewmodel.HomeListingSateliteVM
import kotlin.String
import kotlin.Unit

class HomeListingSateliteActivity :
    BaseActivity<ActivityHomeListingSateliteBinding>(R.layout.activity_home_listing_satelite),
    OnMapReadyCallback {
  private val viewModel: HomeListingSateliteVM by viewModels<HomeListingSateliteVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.homeListingSateliteVM = viewModel
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
    const val TAG: String = "HOME_LISTING_SATELITE_ACTIVITY"

  }
}
