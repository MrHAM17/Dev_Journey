package com.housitbuyrentsellproperty.app.modules.viewonmap.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityViewOnMapBinding
import com.housitbuyrentsellproperty.app.modules.viewonmap.`data`.viewmodel.ViewOnMapVM
import kotlin.String
import kotlin.Unit

class ViewOnMapActivity : BaseActivity<ActivityViewOnMapBinding>(R.layout.activity_view_on_map),
    OnMapReadyCallback {
  private val viewModel: ViewOnMapVM by viewModels<ViewOnMapVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.viewOnMapVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapViewonMap) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "VIEW_ON_MAP_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ViewOnMapActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
