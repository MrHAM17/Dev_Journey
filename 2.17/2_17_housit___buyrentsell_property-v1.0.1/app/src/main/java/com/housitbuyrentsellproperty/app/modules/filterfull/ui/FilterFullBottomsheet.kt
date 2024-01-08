package com.housitbuyrentsellproperty.app.modules.filterfull.ui

import android.os.Bundle
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetFilterFullBinding
import com.housitbuyrentsellproperty.app.modules.filterfull.`data`.viewmodel.FilterFullVM
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class FilterFullBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetFilterFullBinding>(R.layout.bottomsheet_filter_full),
    OnMapReadyCallback {
  private val viewModel: FilterFullVM by viewModels<FilterFullVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.filterFullVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapMap) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
    setUpSearchViewSearchListener()
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    companion object {
      const val TAG: String = "FILTER_FULL_BOTTOMSHEET"


      fun getInstance(bundle: Bundle?): FilterFullBottomsheet {
        val fragment = FilterFullBottomsheet()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
