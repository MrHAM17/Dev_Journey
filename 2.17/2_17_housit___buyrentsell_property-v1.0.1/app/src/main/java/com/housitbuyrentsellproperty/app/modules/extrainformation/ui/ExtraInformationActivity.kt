package com.housitbuyrentsellproperty.app.modules.extrainformation.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityExtraInformationBinding
import com.housitbuyrentsellproperty.app.modules.extrainformation.`data`.model.Layout3RowModel
import com.housitbuyrentsellproperty.app.modules.extrainformation.`data`.viewmodel.ExtraInformationVM
import com.housitbuyrentsellproperty.app.modules.extrainformationsuccess.ui.ExtraInformationSuccessBottomsheet
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ExtraInformationActivity :
    BaseActivity<ActivityExtraInformationBinding>(R.layout.activity_extra_information) {
  private val viewModel: ExtraInformationVM by viewModels<ExtraInformationVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val layoutAdapter = LayoutAdapter(viewModel.layoutList.value?:mutableListOf())
    binding.recyclerLayout.adapter = layoutAdapter
    layoutAdapter.setOnItemClickListener(
    object : LayoutAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Layout3RowModel) {
        onClickRecyclerLayout(view, position, item)
      }
    }
    )
    viewModel.layoutList.observe(this) {
      layoutAdapter.updateData(it)
    }
    binding.extraInformationVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnFinish.setOnClickListener {
      val destFragment = ExtraInformationSuccessBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, ExtraInformationSuccessBottomsheet.TAG)
    }
  }

  fun onClickRecyclerLayout(
    view: View,
    position: Int,
    item: Layout3RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "EXTRA_INFORMATION_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ExtraInformationActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
