package com.housitbuyrentsellproperty.app.modules.notificationlist.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowCategoryBinding
import com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model.CategoryRowModel
import kotlin.Int
import kotlin.collections.List

class CategoryAdapter(
  var list: List<CategoryRowModel>
) : RecyclerView.Adapter<CategoryAdapter.RowCategoryVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowCategoryVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_category,parent,false)
    return RowCategoryVH(view)
  }

  override fun onBindViewHolder(holder: RowCategoryVH, position: Int) {
    val categoryRowModel = CategoryRowModel()
    // TODO uncomment following line after integration with data source
    // val categoryRowModel = list[position]
    holder.binding.categoryRowModel = categoryRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<CategoryRowModel>) {
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
      item: CategoryRowModel
    ) {
    }
  }

  inner class RowCategoryVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowCategoryBinding = RowCategoryBinding.bind(itemView)
  }
}
