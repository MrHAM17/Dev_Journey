package com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivitySearchTypeKeywordBinding
import com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.`data`.model.Autolayoutvertical2RowModel
import com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.`data`.model.Autolayoutvertical3RowModel
import com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.`data`.viewmodel.SearchTypeKeywordVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchTypeKeywordActivity :
    BaseActivity<ActivitySearchTypeKeywordBinding>(R.layout.activity_search_type_keyword) {
  private val viewModel: SearchTypeKeywordVM by viewModels<SearchTypeKeywordVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val autoLayoutVerticalAdapter =
    AutoLayoutVerticalAdapter(viewModel.autoLayoutVerticalList.value?:mutableListOf())
    binding.recyclerAutoLayoutVertical.adapter = autoLayoutVerticalAdapter
    autoLayoutVerticalAdapter.setOnItemClickListener(
    object : AutoLayoutVerticalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Autolayoutvertical2RowModel) {
        onClickRecyclerAutoLayoutVertical(view, position, item)
      }
    }
    )
    viewModel.autoLayoutVerticalList.observe(this) {
      autoLayoutVerticalAdapter.updateData(it)
    }
    val autoLayoutVertical1Adapter =
    AutoLayoutVertical1Adapter(viewModel.autoLayoutVertical1List.value?:mutableListOf())
    binding.recyclerAutoLayoutVertical1.adapter = autoLayoutVertical1Adapter
    autoLayoutVertical1Adapter.setOnItemClickListener(
    object : AutoLayoutVertical1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Autolayoutvertical3RowModel) {
        onClickRecyclerAutoLayoutVertical1(view, position, item)
      }
    }
    )
    viewModel.autoLayoutVertical1List.observe(this) {
      autoLayoutVertical1Adapter.updateData(it)
    }
    binding.searchTypeKeywordVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerAutoLayoutVertical(
    view: View,
    position: Int,
    item: Autolayoutvertical2RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerAutoLayoutVertical1(
    view: View,
    position: Int,
    item: Autolayoutvertical3RowModel
  ): Unit {
    when(view.id) {
    }
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
      const val TAG: String = "SEARCH_TYPE_KEYWORD_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, SearchTypeKeywordActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
