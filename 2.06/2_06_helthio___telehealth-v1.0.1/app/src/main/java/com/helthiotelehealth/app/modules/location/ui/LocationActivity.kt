package com.helthiotelehealth.app.modules.location.ui

import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityLocationBinding
import com.helthiotelehealth.app.modules.location.`data`.viewmodel.LocationVM
import kotlin.String
import kotlin.Unit

class LocationActivity : BaseActivity<ActivityLocationBinding>(R.layout.activity_location),
    OnMapReadyCallback {
  private val viewModel: LocationVM by viewModels<LocationVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.locationVM = viewModel
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
    const val TAG: String = "LOCATION_ACTIVITY"

  }
}
