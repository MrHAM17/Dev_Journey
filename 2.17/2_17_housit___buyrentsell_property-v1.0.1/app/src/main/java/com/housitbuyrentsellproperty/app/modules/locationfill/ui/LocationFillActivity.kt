package com.housitbuyrentsellproperty.app.modules.locationfill.ui

import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityLocationFillBinding
import com.housitbuyrentsellproperty.app.extensions.loadFragment
import com.housitbuyrentsellproperty.app.modules.home.ui.HomeFragment
import com.housitbuyrentsellproperty.app.modules.locationfill.`data`.viewmodel.LocationFillVM
import com.housitbuyrentsellproperty.app.modules.preferable.ui.PreferableActivity
import kotlin.String
import kotlin.Unit

class LocationFillActivity :
    BaseActivity<ActivityLocationFillBinding>(R.layout.activity_location_fill), OnMapReadyCallback {
  private val viewModel: LocationFillVM by viewModels<LocationFillVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.locationFillVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapMap) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnNext.setOnClickListener {
      val destIntent = PreferableActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnSkip.setOnClickListener {
      val destFragment = HomeFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = HomeFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
  }

  companion object {
    const val TAG: String = "LOCATION_FILL_ACTIVITY"

  }
}
