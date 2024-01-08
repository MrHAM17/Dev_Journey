package com.housitbuyrentsellproperty.app.modules.locationempty.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityLocationEmptyBinding
import com.housitbuyrentsellproperty.app.modules.homecontainer.ui.HomeContainerActivity
import com.housitbuyrentsellproperty.app.modules.locationchooselocation.ui.LocationChooseLocationActivity
import com.housitbuyrentsellproperty.app.modules.locationempty.`data`.viewmodel.LocationEmptyVM
import kotlin.String
import kotlin.Unit

class LocationEmptyActivity :
    BaseActivity<ActivityLocationEmptyBinding>(R.layout.activity_location_empty), OnMapReadyCallback
    {
  private val viewModel: LocationEmptyVM by viewModels<LocationEmptyVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.locationEmptyVM = viewModel
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
    binding.btnSkip.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnNext.setOnClickListener {
      val destIntent = LocationChooseLocationActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "LOCATION_EMPTY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, LocationEmptyActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
