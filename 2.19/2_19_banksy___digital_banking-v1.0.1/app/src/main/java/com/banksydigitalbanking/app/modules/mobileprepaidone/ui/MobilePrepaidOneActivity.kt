package com.banksydigitalbanking.app.modules.mobileprepaidone.ui

import android.view.View
import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivityMobilePrepaidOneBinding
import com.banksydigitalbanking.app.modules.entermoney.ui.EnterMoneyActivity
import com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model.FortytwoRowModel
import com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model.Profilelist1RowModel
import com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model.ThirtysevenRowModel
import com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.viewmodel.MobilePrepaidOneVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MobilePrepaidOneActivity :
    BaseActivity<ActivityMobilePrepaidOneBinding>(R.layout.activity_mobile_prepaid_one) {
  private val viewModel: MobilePrepaidOneVM by viewModels<MobilePrepaidOneVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val profileListAdapter =
    ProfileListAdapter(viewModel.profileListList.value?:mutableListOf())
    binding.recyclerProfileList.adapter = profileListAdapter
    profileListAdapter.setOnItemClickListener(
    object : ProfileListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Profilelist1RowModel) {
        onClickRecyclerProfileList(view, position, item)
      }
    }
    )
    viewModel.profileListList.observe(this) {
      profileListAdapter.updateData(it)
    }
    val fortyTwoAdapter = FortyTwoAdapter(viewModel.fortyTwoList.value?:mutableListOf())
    binding.recyclerFortyTwo.adapter = fortyTwoAdapter
    fortyTwoAdapter.setOnItemClickListener(
    object : FortyTwoAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FortytwoRowModel) {
        onClickRecyclerFortyTwo(view, position, item)
      }
    }
    )
    viewModel.fortyTwoList.observe(this) {
      fortyTwoAdapter.updateData(it)
    }
    val thirtySevenAdapter =
    ThirtySevenAdapter(viewModel.thirtySevenList.value?:mutableListOf())
    binding.recyclerThirtySeven.adapter = thirtySevenAdapter
    thirtySevenAdapter.setOnItemClickListener(
    object : ThirtySevenAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ThirtysevenRowModel) {
        onClickRecyclerThirtySeven(view, position, item)
      }
    }
    )
    viewModel.thirtySevenList.observe(this) {
      thirtySevenAdapter.updateData(it)
    }
    binding.mobilePrepaidOneVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerProfileList(
    view: View,
    position: Int,
    item: Profilelist1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerFortyTwo(
    view: View,
    position: Int,
    item: FortytwoRowModel
  ): Unit {
    when(view.id) {
      R.id.linearAngelinaDruff ->  {
        val destIntent = EnterMoneyActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  fun onClickRecyclerThirtySeven(
    view: View,
    position: Int,
    item: ThirtysevenRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "MOBILE_PREPAID_ONE_ACTIVITY"

  }
}
