package com.housitbuyrentsellproperty.app.modules.locationdistance.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetLocationDistanceBinding
import com.housitbuyrentsellproperty.app.modules.locationdistance.`data`.model.LocationlistRowModel
import com.housitbuyrentsellproperty.app.modules.locationdistance.`data`.viewmodel.LocationDistanceVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class LocationDistanceBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetLocationDistanceBinding>(R.layout.bottomsheet_location_distance)
    {
  private val viewModel: LocationDistanceVM by viewModels<LocationDistanceVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val locationListAdapter =
    LocationListAdapter(viewModel.locationListList.value?:mutableListOf())
    binding.recyclerLocationList.adapter = locationListAdapter
    locationListAdapter.setOnItemClickListener(
    object : LocationListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : LocationlistRowModel) {
        onClickRecyclerLocationList(view, position, item)
      }
    }
    )
    viewModel.locationListList.observe(requireActivity()) {
      locationListAdapter.updateData(it)
    }
    binding.locationDistanceVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerLocationList(
    view: View,
    position: Int,
    item: LocationlistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "LOCATION_DISTANCE_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): LocationDistanceBottomsheet {
      val fragment = LocationDistanceBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
