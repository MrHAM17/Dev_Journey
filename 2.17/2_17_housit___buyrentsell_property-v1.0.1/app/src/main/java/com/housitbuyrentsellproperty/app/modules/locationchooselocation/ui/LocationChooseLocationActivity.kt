package com.housitbuyrentsellproperty.app.modules.locationchooselocation.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityLocationChooseLocationBinding
import com.housitbuyrentsellproperty.app.modules.locationchooselocation.`data`.viewmodel.LocationChooseLocationVM
import kotlin.String
import kotlin.Unit

class LocationChooseLocationActivity :
    BaseActivity<ActivityLocationChooseLocationBinding>(R.layout.activity_location_choose_location),
    OnMapReadyCallback {
  private val viewModel: LocationChooseLocationVM by viewModels<LocationChooseLocationVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.locationChooseLocationVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapLocationChoose) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "LOCATION_CHOOSE_LOCATION_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, LocationChooseLocationActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
