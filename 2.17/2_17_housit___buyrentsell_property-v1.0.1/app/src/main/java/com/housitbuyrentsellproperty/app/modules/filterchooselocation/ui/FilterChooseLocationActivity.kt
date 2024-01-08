package com.housitbuyrentsellproperty.app.modules.filterchooselocation.ui

import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityFilterChooseLocationBinding
import com.housitbuyrentsellproperty.app.modules.filterchooselocation.`data`.viewmodel.FilterChooseLocationVM
import kotlin.String
import kotlin.Unit

class FilterChooseLocationActivity :
    BaseActivity<ActivityFilterChooseLocationBinding>(R.layout.activity_filter_choose_location),
    OnMapReadyCallback {
  private val viewModel: FilterChooseLocationVM by viewModels<FilterChooseLocationVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.filterChooseLocationVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapFilterChoose) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "FILTER_CHOOSE_LOCATION_ACTIVITY"

  }
}
