package com.housitbuyrentsellproperty.app.modules.exampledata.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentExampleDataBinding
import com.housitbuyrentsellproperty.app.modules.exampledata.`data`.model.LayoutRowModel
import com.housitbuyrentsellproperty.app.modules.exampledata.`data`.viewmodel.ExampleDataVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ExampleDataFragment :
    BaseFragment<FragmentExampleDataBinding>(R.layout.fragment_example_data), OnMapReadyCallback {
  private val viewModel: ExampleDataVM by viewModels<ExampleDataVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val layoutAdapter = LayoutAdapter(viewModel.layoutList.value?:mutableListOf())
    binding.recyclerLayout.adapter = layoutAdapter
    layoutAdapter.setOnItemClickListener(
    object : LayoutAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : LayoutRowModel) {
        onClickRecyclerLayout(view, position, item)
      }
    }
    )
    viewModel.layoutList.observe(requireActivity()) {
      layoutAdapter.updateData(it)
    }
    binding.exampleDataVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapMap) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerLayout(
    view: View,
    position: Int,
    item: LayoutRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "EXAMPLE_DATA_FRAGMENT"


    fun getInstance(bundle: Bundle?): ExampleDataFragment {
      val fragment = ExampleDataFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
