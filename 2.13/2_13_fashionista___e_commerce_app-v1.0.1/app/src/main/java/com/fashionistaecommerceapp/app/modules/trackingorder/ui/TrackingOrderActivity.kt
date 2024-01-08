package com.fashionistaecommerceapp.app.modules.trackingorder.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityTrackingOrderBinding
import com.fashionistaecommerceapp.app.modules.trackingorder.`data`.viewmodel.TrackingOrderVM
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import kotlin.String
import kotlin.Unit

class TrackingOrderActivity :
    BaseActivity<ActivityTrackingOrderBinding>(R.layout.activity_tracking_order), OnMapReadyCallback
    {
  private val viewModel: TrackingOrderVM by viewModels<TrackingOrderVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.trackingOrderVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapMapImage) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "TRACKING_ORDER_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, TrackingOrderActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
