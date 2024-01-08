package com.safebankmobilebankingapp.app.modules.atmlocation.ui

import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivityAtmLocationBinding
import com.safebankmobilebankingapp.app.modules.atmlocation.`data`.viewmodel.AtmLocationVM
import kotlin.String
import kotlin.Unit

class AtmLocationActivity :
    BaseActivity<ActivityAtmLocationBinding>(R.layout.activity_atm_location), OnMapReadyCallback {
  private val viewModel: AtmLocationVM by viewModels<AtmLocationVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.atmLocationVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapATMLocation) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "ATM_LOCATION_ACTIVITY"

  }
}
