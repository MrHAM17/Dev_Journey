package com.housitbuyrentsellproperty.app.modules.addphotos.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityAddPhotosBinding
import com.housitbuyrentsellproperty.app.modules.addphotos.`data`.model.GalleryRowModel
import com.housitbuyrentsellproperty.app.modules.addphotos.`data`.viewmodel.AddPhotosVM
import com.housitbuyrentsellproperty.app.modules.extrainformation.ui.ExtraInformationActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AddPhotosActivity : BaseActivity<ActivityAddPhotosBinding>(R.layout.activity_add_photos) {
  private val viewModel: AddPhotosVM by viewModels<AddPhotosVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val galleryAdapter = GalleryAdapter(viewModel.galleryList.value?:mutableListOf())
    binding.recyclerGallery.adapter = galleryAdapter
    galleryAdapter.setOnItemClickListener(
    object : GalleryAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : GalleryRowModel) {
        onClickRecyclerGallery(view, position, item)
      }
    }
    )
    viewModel.galleryList.observe(this) {
      galleryAdapter.updateData(it)
    }
    binding.addPhotosVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnNext.setOnClickListener {
      val destIntent = ExtraInformationActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerGallery(
    view: View,
    position: Int,
    item: GalleryRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ADD_PHOTOS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddPhotosActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
