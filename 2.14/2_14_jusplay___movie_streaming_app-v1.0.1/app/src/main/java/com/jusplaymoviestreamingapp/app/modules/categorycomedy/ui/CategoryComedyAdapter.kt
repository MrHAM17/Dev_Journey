package com.jusplaymoviestreamingapp.app.modules.categorycomedy.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowCategorycomedyBinding
import com.jusplaymoviestreamingapp.app.modules.categorycomedy.`data`.model.CategorycomedyRowModel
import kotlin.Int
import kotlin.collections.List

class CategoryComedyAdapter(
  var list: List<CategorycomedyRowModel>
) : RecyclerView.Adapter<CategoryComedyAdapter.RowCategorycomedyVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowCategorycomedyVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_categorycomedy,parent,false)
    return RowCategorycomedyVH(view)
  }

  override fun onBindViewHolder(holder: RowCategorycomedyVH, position: Int) {
    val categorycomedyRowModel = CategorycomedyRowModel()
    // TODO uncomment following line after integration with data source
    // val categorycomedyRowModel = list[position]
    holder.binding.categorycomedyRowModel = categorycomedyRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<CategorycomedyRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: CategorycomedyRowModel
    ) {
    }
  }

  inner class RowCategorycomedyVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowCategorycomedyBinding = RowCategorycomedyBinding.bind(itemView)
  }
}
