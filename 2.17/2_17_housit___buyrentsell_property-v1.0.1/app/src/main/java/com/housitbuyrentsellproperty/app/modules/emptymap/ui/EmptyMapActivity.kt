package com.housitbuyrentsellproperty.app.modules.emptymap.ui

import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityEmptyMapBinding
import com.housitbuyrentsellproperty.app.modules.emptymap.`data`.viewmodel.EmptyMapVM
import kotlin.String
import kotlin.Unit

class EmptyMapActivity : BaseActivity<ActivityEmptyMapBinding>(R.layout.activity_empty_map),
    OnMapReadyCallback {
  private val viewModel: EmptyMapVM by viewModels<EmptyMapVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.emptyMapVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapEmptymap) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "EMPTY_MAP_ACTIVITY"

  }
}
