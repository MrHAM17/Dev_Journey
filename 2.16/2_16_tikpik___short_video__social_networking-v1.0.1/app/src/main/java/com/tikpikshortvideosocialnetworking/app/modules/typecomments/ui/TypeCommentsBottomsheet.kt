package com.tikpikshortvideosocialnetworking.app.modules.typecomments.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.tikpikshortvideosocialnetworking.app.databinding.BottomsheetTypeCommentsBinding
import com.tikpikshortvideosocialnetworking.app.modules.typecomments.`data`.model.TypecommentsRowModel
import com.tikpikshortvideosocialnetworking.app.modules.typecomments.`data`.viewmodel.TypeCommentsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TypeCommentsBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetTypeCommentsBinding>(R.layout.bottomsheet_type_comments)
    {
  private val viewModel: TypeCommentsVM by viewModels<TypeCommentsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val typeCommentsAdapter =
    TypeCommentsAdapter(viewModel.typeCommentsList.value?:mutableListOf())
    binding.recyclerTypeComments.adapter = typeCommentsAdapter
    typeCommentsAdapter.setOnItemClickListener(
    object : TypeCommentsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TypecommentsRowModel) {
        onClickRecyclerTypeComments(view, position, item)
      }
    }
    )
    viewModel.typeCommentsList.observe(requireActivity()) {
      typeCommentsAdapter.updateData(it)
    }
    binding.typeCommentsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerTypeComments(
    view: View,
    position: Int,
    item: TypecommentsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "TYPE_COMMENTS_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): TypeCommentsBottomsheet {
      val fragment = TypeCommentsBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
