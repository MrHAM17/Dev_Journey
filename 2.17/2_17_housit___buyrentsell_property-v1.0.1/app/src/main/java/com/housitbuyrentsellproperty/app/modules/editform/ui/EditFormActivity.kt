package com.housitbuyrentsellproperty.app.modules.editform.ui

import android.view.View
import androidx.activity.viewModels
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityEditFormBinding
import com.housitbuyrentsellproperty.app.modules.editform.`data`.model.Layout5RowModel
import com.housitbuyrentsellproperty.app.modules.editform.`data`.model.ShapeRowModel
import com.housitbuyrentsellproperty.app.modules.editform.`data`.viewmodel.EditFormVM
import com.housitbuyrentsellproperty.app.modules.editsuccess.ui.EditSuccessBottomsheet
import kotlin.Int
import kotlin.String
import kotlin.Unit

class EditFormActivity : BaseActivity<ActivityEditFormBinding>(R.layout.activity_edit_form),
    OnMapReadyCallback {
  private val viewModel: EditFormVM by viewModels<EditFormVM>()

  private var mMap: GoogleMap? = null


  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val shapeAdapter = ShapeAdapter(viewModel.shapeList.value?:mutableListOf())
    binding.recyclerShape.adapter = shapeAdapter
    shapeAdapter.setOnItemClickListener(
    object : ShapeAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ShapeRowModel) {
        onClickRecyclerShape(view, position, item)
      }
    }
    )
    viewModel.shapeList.observe(this) {
      shapeAdapter.updateData(it)
    }
    val layoutAdapter = LayoutAdapter(viewModel.layoutList.value?:mutableListOf())
    binding.recyclerLayout.adapter = layoutAdapter
    layoutAdapter.setOnItemClickListener(
    object : LayoutAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Layout5RowModel) {
        onClickRecyclerLayout(view, position, item)
      }
    }
    )
    viewModel.layoutList.observe(this) {
      layoutAdapter.updateData(it)
    }
    binding.editFormVM = viewModel
    val mapFragment = supportFragmentManager.findFragmentById(R.id.mapMap) as?
    SupportMapFragment
    mapFragment?.getMapAsync(this)
  }

  override fun onMapReady(p0: GoogleMap): Unit {
    mMap = p0
  }

  override fun setUpClicks(): Unit {
    binding.btnUpdate.setOnClickListener {
      val destFragment = EditSuccessBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, EditSuccessBottomsheet.TAG)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerShape(
    view: View,
    position: Int,
    item: ShapeRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerLayout(
    view: View,
    position: Int,
    item: Layout5RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "EDIT_FORM_ACTIVITY"

  }
}
