package com.helthiotelehealth.app.modules.articles.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityArticlesBinding
import com.helthiotelehealth.app.modules.articles.`data`.model.EightynineRowModel
import com.helthiotelehealth.app.modules.articles.`data`.model.SixtyRowModel
import com.helthiotelehealth.app.modules.articles.`data`.viewmodel.ArticlesVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ArticlesActivity : BaseActivity<ActivityArticlesBinding>(R.layout.activity_articles) {
  private val viewModel: ArticlesVM by viewModels<ArticlesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val eightyNineAdapter = EightyNineAdapter(viewModel.eightyNineList.value?:mutableListOf())
    binding.recyclerEightyNine.adapter = eightyNineAdapter
    eightyNineAdapter.setOnItemClickListener(
    object : EightyNineAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : EightynineRowModel) {
        onClickRecyclerEightyNine(view, position, item)
      }
    }
    )
    viewModel.eightyNineList.observe(this) {
      eightyNineAdapter.updateData(it)
    }
    val sixtyAdapter = SixtyAdapter(viewModel.sixtyList.value?:mutableListOf())
    binding.recyclerSixty.adapter = sixtyAdapter
    sixtyAdapter.setOnItemClickListener(
    object : SixtyAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SixtyRowModel) {
        onClickRecyclerSixty(view, position, item)
      }
    }
    )
    viewModel.sixtyList.observe(this) {
      sixtyAdapter.updateData(it)
    }
    binding.articlesVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerEightyNine(
    view: View,
    position: Int,
    item: EightynineRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerSixty(
    view: View,
    position: Int,
    item: SixtyRowModel
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
      const val TAG: String = "ARTICLES_ACTIVITY"

    }
  }
