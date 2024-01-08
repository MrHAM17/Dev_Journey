package com.ecommerce.app.modules.explore.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowCategories1Binding
import com.ecommerce.app.modules.explore.`data`.model.Categories1RowModel
import kotlin.Int
import kotlin.collections.List

class Categories1Adapter(
  var list: List<Categories1RowModel>
) : RecyclerView.Adapter<Categories1Adapter.RowCategories1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowCategories1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_categories1,parent,false)
    return RowCategories1VH(view)
  }

  override fun onBindViewHolder(holder: RowCategories1VH, position: Int) {
    val categories1RowModel = Categories1RowModel()
    // TODO uncomment following line after integration with data source
    // val categories1RowModel = list[position]
    holder.binding.categories1RowModel = categories1RowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Categories1RowModel>) {
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
      item: Categories1RowModel
    ) {
    }
  }

  inner class RowCategories1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowCategories1Binding = RowCategories1Binding.bind(itemView)
  }
}
